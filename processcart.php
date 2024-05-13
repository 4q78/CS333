<?php
session_start();

if (isset($_POST['sbtn']) && $_POST['sbtn']=='Update All'){
    $pid=$_POST['pid'];
    $qty=$_POST['qty'];
    for($i=0;$i<count($pid);++$i)
        $_SESSION['mycart'][$pid[$i]]=$qty[$i];
    header('location:viewcart.php?status=1');
}
else {
  try {
      require('connection.php');
      $db->beginTransaction();

      echo "<form action='post'>";
        
        echo "<input name ='add' value= 'Enter'/>";
     echo "</form>";
         if $_REQUEST['add']=='Riffa'{

          $charge=1.2;
         }
      $sql = "insert into cusorder values (
                null,
                '".$_SESSION['activeUser']."',
                NOW(),
                'Order Placed',

        )";
      $result = $db->exec($sql);
      if ($result === 1){

        $orderId = $db->lastInsertId();

        $stmt1 = $db->prepare("INSERT INTO order_items
           VALUES(null,$orderId,?,?)");
        $stmt2 = $db->prepare("UPDATE products SET qty = qty - ?
              WHERE id = ?");
        $pid=$_POST['pid']; //array
        $qty=$_POST['qty']; //array
        $c=0;
        for($i=0;$i<count($pid);++$i){
          if ($stmt1->execute(array($pid[$i],$qty[$i]))){
            ++$c;
            //update the record
            $stmt2->execute(array($qty[$i], $pid[$i]));
          }
        }

        $db->commit();
        unset($_SESSION['mycart']);
        echo "<h3 style='color:green;text-align:center'>Order Placed ($c items)</h3>";
        echo "<h3 style='color:black;text-align:center'><a href='products.php'>View Products</a></h3>";
      }
      $db=null;
    }
    catch(PDOException $e){
      $db->rollBack();
      die($e->getMessage());
    }

}
?>
