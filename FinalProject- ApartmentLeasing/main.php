<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Ysabeau:ital,wght@0,400;1,300;1,600&display=swap"
        rel="stylesheet">
    <style>
        <?php include 'style.css'; ?>
    </style>
</head>
<body>
    <?php
            //connect to the team 33 database
            $con = mysqli_connect("db.luddy.indiana.edu", "i308f23_team33", "my+sql=i308f23_team33", "i308f23_team33");

            if (!$con) {
                die("Failed to connect to MySQL: " . mysqli_connect_error());
            }
        ?>
    <div class="container">
        <!-- pick which query to run-->
        <form name="pickQuery" action="" method="POST">
            <select name="query" class="queryDropdown">
                <option class="blank" value="blank"></option>
                <option class="query1" value="query1" <?php if ($_POST['query'] == 'query1'){ ?>selected="true" <?php }; ?>>Owner Payments</option>
                <option class="query2" value="query2" <?php if ($_POST['query'] == 'query2'){ ?>selected="true" <?php }; ?>>Check Payments</option>
                <option class="query3" value="query3" <?php if ($_POST['query'] == 'query3'){ ?>selected="true" <?php }; ?>>Lease Expiring Soon</option>
                <option class="query4" value="query4" <?php if ($_POST['query'] == 'query4'){ ?>selected="true" <?php }; ?>>Pet Owners</option>
                <option class="query5" value="query5" <?php if ($_POST['query'] == 'query5'){ ?>selected="true" <?php }; ?>>Vacant Properties</option>
            </select>
            <input type="submit" name="subBtn" value="Get Form">
        </form>
        <!--Show the correct form based on the input from the dropdown-->
        <?php
            $queryNum = $_POST['query'];
            switch($queryNum){
                //query 1 form - Jackie
                case "query1":
                    ?>
                        <div class="qForm">
                            <?php
                                $q1sql1 = "SELECT concat(fname, ' ', lname)";
                            ?>
                            <form action="query1.php" method="POST">
                                <input type="submit" name="q1btn">
                            </form>
                        </div>
                    <?php
                    break;
                //query 2 form - Mary
                case "query2":
                    ?>
                        <div class="qForm">
                            2
                            <form action="query2.php" method="POST">
                                <input type="submit" name="q1btn">
                            </form>
                        </div>
                    <?php
                    break;
                //query 3 form - Shashank
                case "query3":
                    ?>
                        <div class="qForm">
                            3
                            <form action="query3.php" method="POST">
                                <input type="submit" name="q1btn">
                            </form>
                        </div>
                    <?php
                    break;
                //query 4 form - Greg
                case "query4":
                    ?>
                        <div class="qForm">
                            4
                            <form action="query4.php" method="POST">
                                <input type="submit" name="q1btn">
                            </form>
                        </div>
                    <?php
                    break;
                //query 5 form - Tanishka
                case "query5":
                    ?>
                        <div class="qForm">
                            5
                            <form action="query5.php" method="POST">
                                <input type="submit" name="q1btn">
                            </form>
                        </div>
                    <?php
                    break;
                //default if no query has been selected
                default:
                ?>
                    <div>
                    </div>
                <?php ;
            }
        ?>
    </div>
    <?php
        mysqli_close($con);
    ?>
</body>
</html>