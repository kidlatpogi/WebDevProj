<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["username"]);
    $password = trim($_POST["pswd"]);

    if (empty($email) || empty($password)) {
        echo "Please fill in all login fields.";
        exit;
    }

    $validCredentials = [
        "sarapmoFrancis@example.com" => "123",
        "drinolokoy@pepengMatambok.com" => "Louie123",
        "cigaretteAfterRex@hampaskosayoraketako.com" => "Mateo",
        "kidlatBilat@angsarapnicis.com" => "Kidlat",
        "kentotpakantot@example.com" => "kantotEverySaturday"
    ];

    if (array_key_exists($email, $validCredentials) && $validCredentials[$email] === $password) {
        echo "Login Successful";
    } else {
        echo "Invalid email or password.";
    }
}
?>
