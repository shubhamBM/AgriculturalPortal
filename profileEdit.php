<?php
    session_start();
?>

<!DOCTYPE HTML>

<html lang="en">
    <head>
        <title>Profile: <?php echo $_SESSION['Username']; ?></title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap\js\bootstrap.min.js"></script>
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>

    <body class="subpage">

        <section id="post" class="wrapper bg-img" data-bg="banner2.jpg">
            <div class="inner">
                <div class="box">
                <header>
                    
                    <h2><?php echo $_SESSION['name'];?></h2>
                    <h4><?php echo $_SESSION['username'];?></h4>
                    <br>
                </header>
                <form method="post" action="updateProfile.php">
                    <div class="row uniform">
                        <div class="8u 12u$(xsmall)">
                            <input type="text" name="name" id="name" value="<?php echo $_SESSION['name'];?>" placeholder="Full Name" required />
                        </div>
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="mobile" id="mobile" value="<?php echo $_SESSION['mobile'];?>" placeholder="Mobile No" required/>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="uname" id="uname" value="<?php echo $_SESSION['username'];?>" placeholder="Username" required/>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="email" name="email" id="email" value="<?php echo $_SESSION['email'];?>" placeholder="Email" required/>
                        </div>
                        <center>
                            <input type="submit" class = "button special" value="Update Profile" />
                        </center>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </section>

        <!-- Scripts -->
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/jquery.scrolly.min.js"></script>
            <script src="assets/js/jquery.scrollex.min.js"></script>
            <script src="assets/js/skel.min.js"></script>
            <script src="assets/js/util.js"></script>
            <script src="assets/js/main.js"></script>

    </body>
</html>
