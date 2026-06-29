<?php
header("Content-Type: application/json");

// Generate secure 4-digit PIN (0000–9999)
$pin = str_pad(random_int(0, 9999), 4, "0", STR_PAD_LEFT);

echo json_encode([
    "pin" => $pin
]);
?>
