<?php

$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "task1_database"; 


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if (isset($_POST['website_name'])) {
    $website_name = $_POST['website_name'];

    
    $sql = "SELECT visit_site, username, cpanel_url FROM websites WHERE website_name = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $website_name);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        
        $data = $result->fetch_assoc();
        echo json_encode($data);
    } else {
        echo json_encode(['error' => 'No data found for the website.']);
    }

    $stmt->close();
}

$conn->close();
?>


