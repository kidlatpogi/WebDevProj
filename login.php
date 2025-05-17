<?php
// login.php

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["username"]);
    $password = trim($_POST["pswd"]);

    // Check if fields are filled
    if (empty($email) || empty($password)) {
        die("Please fill in all login fields.");
    }

    // Hardcoded valid credentials
    $validEmail = "sarapmoFrancis@example.com";
    $validPassword = "123";

    if ($email === $validEmail && $password === $validPassword) {
        echo "Login successful!";
        // In real case: Start session, redirect, etc.
    } else {
        echo "Invalid email or password.";
    }
}
?>
