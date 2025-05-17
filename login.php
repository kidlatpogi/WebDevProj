<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Get and sanitize user input
    $email = trim($_POST["username"]);
    $password = trim($_POST["pswd"]);

    if (empty($email) || empty($password)) {
        echo "Please fill in all login fields.";
        exit;
    }

    // Define valid email-password pairs
    $validCredentials = [
        "sarapmoFrancis@example.com" => "123",
        "drinolokoy@pepengMatambok.com" => "Louie123",
        "cigaretteAfterRex@hampaskosayoraketako.com" => "Mateo",
        "kidlatBilat@angsarapnicis.com" => "Kidlat",
        "kentotpakantot@example.com" => "kantotEverySaturday" // <- Please avoid inappropriate domains
    ];

    // Check if credentials are valid
    if (array_key_exists($email, $validCredentials) && $validCredentials[$email] === $password) {
        echo htmlspecialchars($email) . " Login successful!";
    } else {
        echo "Invalid email or password.";
    }
}
?>
