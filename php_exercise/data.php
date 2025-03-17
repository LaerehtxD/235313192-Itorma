<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!empty($_POST["user_text"])) {
        $text = $_POST["user_text"]; 
        echo "<h2>You entered:</h2>";
        echo "<p>$text</p>";
    } else {
        echo "<h2>Please enter some text.</h2>";
    }
} else {
    echo "<h2>Invalid request.</h2>";
}
?>