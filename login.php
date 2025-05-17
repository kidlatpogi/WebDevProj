<?php

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["username"]);
    $password = trim($_POST["pswd"]);

    if (empty($email) || empty($password)) {
        die("Please fill in all login fields.");
    }

    // Fixed missing commas in the array
    $validCredentials = [
        "sarapmoFrancis@example.com" => "123",
        "drinolokoy@pepengMatambok.com" => "Louie123",
        "cigaretteAfterRex@hampaskosayoraketako.com" => "Mateo",
        "kidlatBilat@angsarapnicis.com" => "Kidlat",
        "kentotpakantot@ihateniggers.com" => "kantotEverySaturday"
    ];

    if (array_key_exists($email, $validCredentials) && $validCredentials[$email] === $password) {
        echo htmlspecialchars($email) . " Login successful!";
    } else {
        echo "Invalid email or password.";
    }
}
?>
