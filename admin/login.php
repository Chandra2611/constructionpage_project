
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form Validation</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Montserrat", sans-serif;
            background: linear-gradient(rgba(0, 0, 0, .5), rgba(0, 0, 0, .5)), url('https://i.postimg.cc/tJ1RdgW0/3.jpg');
            background-size: cover;
            background-position: center;
        }

        .box {
            border-radius: 20px;
            width: 400px;
            padding: 30px;
            /* border: 2px solid orangered; */
            background-color: rgba(0, 0, 0, .4);
            box-shadow: 1px 1px 2px #ffc400ef;
            display: flex;
            flex-direction: column;
        }

        .box h1 {
            color: #fff;
            text-transform: uppercase;
            font-weight: 700;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .username,
        .password {
            position: relative;
        }

        .fa-regular.fa-envelope,
        .fa-solid.fa-lock {
            position: absolute;
            left: 15px;
            top: 20px;
            color: rgb(256, 256, 256);
        }

        .box input[type="text"],
        .box input[type="password"] {
            font-size: 20px;
            border: none;
            background: none;
            display: block;
            margin: 30px auto;
            text-align: center;
            border: 3px solid #0367fd;
            padding: 14px 10px;
            width: 350px;
            color: #fff;
            border-radius: 24px;
            transition: all .2s ease-in;
            outline: none;
        }

        .box input[type="text"]:focus,
        .box input[type="password"]:focus {
            border-color: #ffc400ec;
        }

        .wrapper {
            /* border: 2px solid orangered; */
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }

        #btn {
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 3px solid #ffc400ec;
            padding: 14px 35px;
            outline: none;
            font-size: 18px;
            font-weight: 700;
            color: rgb(256, 256, 256);
            border-radius: 20px;
            transition: all .2s ease-in-out;
            cursor: pointer;
        }

        #btn:hover {
            background-color: #ffc400ec;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="box">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                <h1>Login</h1>

                <div class="username">
                    <input type="text" placeholder="Enter username" id="username" autocomplete="off" name="username" required>
                    <i class="fa-regular fa-envelope"></i>
                </div>

                <div class="password">
                    <input type="password" placeholder="Enter password" id="password" autocomplete="off" name="password" required>
                    <i class="fa-solid fa-lock"></i>
                </div>

                <button id="btn" type="submit" name="submit">Login</button>
                
            </form>
        </div>
    </div>

    <?php
     include_once '../config.php'; 
     session_start();
  
    if (isset($_POST['submit'])) {
      $username = $_POST['username'];
      $password = $_POST['password'];
      
  
  
      $sql = "SELECT * FROM `login_table` WHERE `username`='$username'";
      $res = mysqli_query($db, $sql);
      $number = mysqli_num_rows($res);
      if ($number > 0) {
        $sql1 = "SELECT * FROM `login_table` WHERE `username`='$username' AND `password`='$password'";
        $result = mysqli_query($db, $sql1);
        $row = mysqli_fetch_assoc($result);
       
         }
        $username = $row['username'];
        
        $id = $row['id'];
       if ($row !== null) {
          
              echo "<script>location.href = 'index.php';</script>";
                    
            $_SESSION['username']= $username;
            
            $_SESSION['id'] = $id;
  
        
          }else{
            echo "<script>location.href = 'login.php';</script>";
          }
        }
     
    ?>

</body>

</html>