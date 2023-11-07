<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vacant Properties</title>
    <style>
        <?php include 'style.css'; ?>
    </style>
</head>

<body>
    <div class="container">
        <?php
            //connect to the team 33 database
            $con = mysqli_connect("db.luddy.indiana.edu", "i308f23_team33", "my+sql=i308f23_team33", "i308f23_team33");

            if (!$con) {
                die("Failed to connect to MySQL: " . mysqli_connect_error());
            }
            echo 5;
            mysqli_close($con);
        ?>
        <!--Return to the main page-->
        <form action="main.php">
            <input type="submit" name="backBtn" value="Main Page">
        </form>
    </div>
</body>

</html>