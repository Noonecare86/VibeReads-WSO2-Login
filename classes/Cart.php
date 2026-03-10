<?php
// Cart.php
class Cart {
    private $db;
    private $table = 'cart';
    
    public function __construct(Database $db) {
        $this->db = $db;
    }
    
    public function checkBookInCart($bookName, $userId) {
        $bookName = $this->db->escapeString($bookName);
        $userId = $this->db->escapeString($userId);
        
        $query = "SELECT * FROM {$this->table} WHERE name = '$bookName' AND user_id='$userId'";
        return $this->db->query($query);
    }
    
    public function addToCart($bookId, $userId, $bookName, $bookPrice, $bookImage, $quantity, $totalPrice) {
        $query = "INSERT INTO {$this->table} (book_id, user_id, name, price, image, quantity, total) 
                 VALUES('$bookId', '$userId', '$bookName', '$bookPrice', '$bookImage', '$quantity', '$totalPrice')";
        return $this->db->query($query);
    }
}
?>