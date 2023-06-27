<?php
$hash = hash('sha256', $password1);

function createSalt()
{
    $text = md5(uniqid(rand(), TRUE));
    return substr($text, 0, 3);
}

$salt = createSalt();
$password = hash('sha256', $salt . $hash);
?>