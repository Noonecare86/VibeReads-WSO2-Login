<?php
// User.php
class User {
    private $db;
    private $table = 'users_info';
    
    public function __construct(Database $db) {
        $this->db = $db;
    }
    
    public function login($email, $password) {
        $email = $this->db->escapeString($email);
        $password = $this->db->escapeString($password);
        
        $query = "SELECT * FROM {$this->table} WHERE email = '$email' and password='$password'";
        $result = $this->db->query($query);
        
        if ($result && mysqli_num_rows($result) == 1) {
            return mysqli_fetch_assoc($result);
        }
        return false;
    }
}
?>