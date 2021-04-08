<?php

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    //var_dump($_FILES);
    $target_dir = "uploads/";
    $filename = $_FILES["plaatje"]["name"];
    $target_file = $target_dir . basename($_FILES["plaatje"]["name"]);
    $uploadOk = true;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    $check = getimagesize($_FILES["plaatje"]["tmp_name"]);
    if($check !== false) {
        //echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = true;
        if(move_uploaded_file($_FILES["plaatje"]["tmp_name"],$target_dir . $_FILES["plaatje"]["name"])) {
            $conn = connect_mysql();
            //var_dump($conn);
            $sql = "INSERT INTO `myimages` (`path`, `imagename`) VALUES (?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ss",$target_dir,$filename);
            if($stmt->execute()) {
                header("location: redirect.html");
            } else {
                echo "<p>plaatje niet in db geplaatst: $stmt->error</p>";
            }
        }
    } else {
        echo "File is not an image.";
        $uploadOk = false;
    }
}

function connect_mysql() {
    $mysqli = new mysqli("localhost","plaatjes","plaatjes","plaatjes");
    return $mysqli;
}

function read_images_fromsql() {
    $html = null;
    $conn = connect_mysql();
    $result = $conn->query("SELECT `path`,`imagename` FROM `myimages`");
    while($row = $result->fetch_assoc())
    {
                $html .= sprintf('<img src="%s">', $row['path'] . $row['imagename']);
    }
    return $html;
}



?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Image upload</title>

    <style>
        .image_container {
            display: flex;
        }

        .image_container img {
            width: 50px;
        }
    </style>

</head>
<body>
    <form action="index.php" method="post" enctype="multipart/form-data">
        <input type="file" name="plaatje">
        <input type="submit" value="verstuur" name="submit">
    </form>

    <div class="image_container">
            <?=read_images_fromsql()?>
    </div>
</body>
</html>

