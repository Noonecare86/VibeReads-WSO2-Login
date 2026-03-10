<?php
// Session.php
class SessionManager {
    public static function start() {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
    }
    
    public static function getUserId() {
        return $_SESSION['user_id'] ?? null;
    }
    
    public static function getUserName() {
        return $_SESSION['user_name'] ?? null;
    }
    
    public static function isLoggedIn() {
        return isset($_SESSION['user_id']);
    }
    
    public static function requireLogin() {
        if (!self::isLoggedIn()) {
            header('location:login.php');
            exit;
        }
    }
}
?>