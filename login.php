<?php
  session_start();
  if (isset($_SESSION['activeUser']))
      session_unset(); //this will remove all session keys
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign-In</title>
  </head>
  <body>
  <?php
  if (isset($_POST['sbtn'])){
    $uname = $_POST['un'];
    $pass = $_POST['ps'];
    //Validation will be kept for you as an exercise
    try {
        require('connection.php');
        $sql = "select * from users
                  where username = '$uname'";
        $result = $db->query($sql);
        if ($row = $result->fetch()){
          $pass = trim($pass);
          if (password_verify($pass, $row['userpassword'])) {
              $_SESSION['activeUser'] = $uname;
              header('location: products.php');
              die();
          }
          else {
            echo "<h3 style='color:red'>Invalid password</h3>";
          }
        }
        else {
          echo "<h3 style='color:red'>Invalid Username</h3>";
        }
        $db=null;
    }
    catch(PDOException $e){
      die($e->getMessage());
    }
  }
  ?>
    <form method="post">
      <label for="un" />Username: </label>
      <input type="text" name="un" id="un" placeholder="Enter username"> <br />

      <label for="ps" />Password: </label>
      <input type="password" name="ps" id="ps" placeholder="Enter Password"> <br />

      <button type="submit" name="sbtn">Sign In</button>
    </form>

  </body>
</html>
