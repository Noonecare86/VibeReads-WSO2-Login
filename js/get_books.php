<?php
require_once 'config.php';

/*Set the content type of the response to JSON*/
header('Content-Type: application/json');

/* Filter and validate user input parameters*/
$price = filter_var($_GET['price'] ?? 200, FILTER_VALIDATE_FLOAT);
$category = filter_var($_GET['category'] ?? '', FILTER_SANITIZE_STRING);
$rating = filter_var($_GET['rating'] ?? 0, FILTER_VALIDATE_INT);
$sort = filter_var($_GET['sort'] ?? '', FILTER_SANITIZE_STRING);

try {
    $query = "SELECT * FROM books WHERE 1=1";
    $params = [];

    if ($price) {
        $query .= " AND price <= ?";
        $params[] = $price;
    }

    if ($category) {
        $query .= " AND category = ?";
        $params[] = $category;
    }

    if ($rating) {
        $query .= " AND rating >= ?";
        $params[] = $rating;
    }


/*Add sorting to the query based on user input*/
    switch($sort) {
        case 'price_low':
            $query .= " ORDER BY price ASC";
            break;
        case 'price_high':
            $query .= " ORDER BY price DESC";
            break;
        case 'rating':
            $query .= " ORDER BY rating DESC";
            break;
        default:
            $query .= " ORDER BY id DESC";
    }

    $stmt = $pdo->prepare($query);
    $stmt->execute($params);
    $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    ob_start();
    foreach($books as $book) {
        include 'book_card_template.php';
    }
    $html = ob_get_clean();
    
    echo json_encode([
        'success' => true,
        'html' => $html,
        'count' => count($books)
    ]);

} catch (Exception $e) {
    error_log($e->getMessage());
    echo json_encode([
        'success' => false,
        'message' => 'Failed to fetch books'
    ]);
}
?>
