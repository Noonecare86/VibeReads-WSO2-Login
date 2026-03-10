<?php
class Book {
    private $db;
    private $table = 'book_info';
    
    public function __construct(Database $db) {
        $this->db = $db;
    }
    
    public function getBookById($id) {
        $id = $this->db->escapeString($id);
        $query = "SELECT * FROM {$this->table} WHERE bid = '$id'";
        $result = $this->db->query($query);
        
        if ($result && mysqli_num_rows($result) > 0) {
            return $result;  // Return the result object instead of fetching
        }
        return false;
    }
}
?>
