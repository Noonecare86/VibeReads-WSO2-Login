<?php
class Database {
    private $conn;
    
    public function __construct() {
        require_once 'config.php';
        $this->conn = $conn;
    }
    
    public function getConnection() {
        return $this->conn;
    }
    
    public function query($sql) {
        return $this->conn->query($sql);
    }
    
    public function escapeString($string) {
        return mysqli_real_escape_string($this->conn, $string);
    }
}
?>