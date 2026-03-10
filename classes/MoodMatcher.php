<?php
// MoodMatcher.php
class MoodMatcher {
    private $db;
    private $book;
    
    public function __construct() {
        $this->db = Database::getInstance();
        $this->book = new Book();
    }
    
    public function matchBooks($mood, $genre) {
        $result = $this->book->getBooksByMood($mood, $genre);
        
        if (mysqli_num_rows($result) == 0) {
            $result = $this->book->getBooksByMood($mood);
        }
        
        return $result;
    }
    
    public function getMoods() {
        return [
            'Happy' => '😊',
            'Reflective' => '🤔',
            'Adventurous' => '🏃‍♂️',
            'Romantic' => '❤️',
            'Peaceful' => '😌',
            'Excited' => '🤩',
            'Curious' => '🧐',
            'Inspired' => '✨'
        ];
    }
}
