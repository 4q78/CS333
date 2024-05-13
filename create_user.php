<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign-Up</title>
  </head>
  <body>
  <?php
  if (isset($_POST['sbtn'])){
    $name = $_POST['n'];
    $uname = $_POST['un'];
    $pass = $_POST['ps'];
    $cpass = $_POST['cps'];

    //Validation will be kept for you as an exercise
    //check name, username, password, cpassword, and the proceed
    try {
        require('connection.php');
        $hps = password_hash($pass, PASSWORD_DEFAULT);
        $sql = "insert into users values (
                  null,
                  '$uname',
                  '$hps',
                  '$name',
                  null
          )";
        $result = $db->exec($sql);
        if ($result === 1)
            echo "Successful Registeration - <a href='login.php'>Click here to login</a>";
        die();
    }
    catch(PDOException $e){
      if ($db->errorCode()==23000)
        echo "Failed, Username is already taken, choose another one";
      else
        die($e->getMessage());
    }
    $db=null;

  }
  ?>
    <form method="post">
      <label for="n" />Name: </label>
      <input type="text" name="n" id="n" placeholder="Enter Name"> <br />

      <label for="un" />Username: </label>
      <input type="text" name="un" id="un" placeholder="Enter username"> <br />

      <label for="ps" />Password: </label>
      <input type="password" name="ps" id="ps" placeholder="Enter Password"> <br />

      <label for="cps" />Confirm Password: </label>
      <input type="password" name="cps" id="cps" placeholder="Enter Password Again"> <br />
      <button type="submit" name="sbtn">Sign Up</button>
    </form>

  </body>
</html>