<?php
session_start();
include 'config.php';

header('Content-Type: application/json');

// Get parameters from request
$primary_mood = $_GET['mood'] ?? null;
$intensity = $_GET['intensity'] ?? 3;
$genre_preference = $_GET['genre'] ?? null;
$reading_time = $_GET['reading_time'] ?? null;
$user_id = $_SESSION['user_id'] ?? null;

if (!$primary_mood) {
    echo json_encode(['error' => 'No mood specified']);
    exit;
}

try {
    // Build the base query with weighted scoring
    $query = "
        SELECT 
            b.*,
            (
                CASE 
                    WHEN b.mood = ? THEN 3
                    ELSE 1
                END +
                CASE 
                    WHEN b.category = ? THEN 2
                    ELSE 0
                END +
                CASE 
                    WHEN b.price BETWEEN ? AND ? THEN 1
                    ELSE 0
                END
            ) as match_score
        FROM book_info b
        WHERE 1=1
    ";

    $params = [$primary_mood];
    $types = "s";

    // Add genre preference if provided
    if ($genre_preference) {
        $params[] = $genre_preference;
        $types .= "s";
    } else {
        $params[] = "";
        $types .= "s";
    }

    // Add price range based on intensity 
    $min_price = 0;
    $max_price = 1000;
    $params[] = $min_price;
    $params[] = $max_price;
    $types .= "dd";

    // Add mood filter
    $query .= " AND (b.mood = ? OR b.category = ?)";
    $params[] = $primary_mood;
    $params[] = $genre_preference ?? "";
    $types .= "ss";

    // Prepare and execute the query
    $stmt = mysqli_prepare($conn, $query . " ORDER BY match_score DESC LIMIT 8");
    mysqli_stmt_bind_param($stmt, $types, ...$params);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    $books = [];
    while ($row = mysqli_fetch_assoc($result)) {
        // Clean and format the data
        $books[] = [
            'bid' => $row['bid'],
            'name' => htmlspecialchars($row['name']),
            'title' => htmlspecialchars($row['title']),
            'price' => $row['price'],
            'category' => htmlspecialchars($row['category']),
            'mood' => htmlspecialchars($row['mood']),
            'description' => htmlspecialchars($row['description']),
            'image' => htmlspecialchars($row['image']),
            'match_score' => $row['match_score']
        ];
    }

    // Save user preference if logged in
    if ($user_id) {
        $preference_query = "INSERT INTO mood_preferences (user_id, mood, date_added) VALUES (?, ?, NOW())";
        $stmt = mysqli_prepare($conn, $preference_query);
        mysqli_stmt_bind_param($stmt, "is", $user_id, $primary_mood);
        mysqli_stmt_execute($stmt);
    }

    // Return the results
    echo json_encode([
        'status' => 'success',
        'books' => $books,
        'filters' => [
            'mood' => $primary_mood,
            'intensity' => $intensity,
            'genre' => $genre_preference,
            'reading_time' => $reading_time
        ]
    ]);

} catch (Exception $e) {
    // Log error securely
    error_log("Error in mood matching: " . $e->getMessage());
    
    // Return generic error to client
    echo json_encode([
        'status' => 'error',
        'message' => 'An error occurred while finding book matches'
    ]);
}

// Close the database connection
mysqli_close($conn);
?>