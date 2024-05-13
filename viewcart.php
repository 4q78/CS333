<?php
session_start();
echo "<ul>";
echo"<li><a href='products.php'>Home Page</a></li>";
echo "<ul>";
if (!isset($_SESSION['mycart']) || empty($_SESSION['mycart']))
  die("<h3 style='color:red;text-align:center'>Your Cart is Empty</h3>");

  try {
      require('connection.php');
  }
  catch(PDOException $e){
    die($e->getMessage());
  }

?>
<html>
<body>
  <?php
    if (isset($_GET['status'])){
      switch($_GET['status']){
        case 1: echo "<h3 style='color:red;text-align:center'>Cart Updated</h3>"; break;
        case 2: echo "<h3 style='color:red;text-align:center'>Cart Item Removed</h3>"; break;
      }
    }
   ?>
  <table border='1' align='center' width='400'>
    <tr>
      <th>Picture</th><th>Name</th><th>Price</th>
      <th>Quantity</th><th>Remove</th>
    </tr>
<form method='post' action='processcart.php'>
  <?php
  foreach($_SESSION['mycart'] as $pid=>$qty)
  {
    try {
      $sql = "SELECT p.*, c.categoryName 
          FROM products p 
          JOIN category c ON p.categoryid = c.categoryid 
          WHERE pid =$pid";

        /* $sql = "select * from products where pid = $pid"; */
        $productsRecord = $db->query($sql);
    }
    catch(PDOException $e){
      die($e->getMessage());
    }
    if ($details=$productsRecord->fetch()){
        echo "<tr>"; ?>
        <td>
          <img src='products/<?php echo $details["categoryName"];?>/<?php echo $details["picture"];?>' width='100' height='100'/>
    </td>
        <?php 
        echo "<td>".$details['name']."</td>";
        echo "<td>".$details['price']."</td>";
        echo "<td>";
            echo "<select name='qty[]'>";
            for($i=1;$i<=$details['qty'];++$i){
              echo "<option ";
              if ($i==$qty) echo "selected ";
              echo ">$i</option>";
            }
            echo "</select>";
            echo "<input type='hidden' name='pid[]' value='$pid' />";
        echo "</td>";
        echo "<td><a href='removeitem.php?pid=$pid'>Remove?</a></td></tr>";
    }
  }
  $db=null;
  ?>
  <tr>
    <th colspan='5'>
      <input type='submit' name='sbtn' value='Place Order' />
      <input type='submit' name='sbtn' value='Update All' /></th>
  </tr>
</form>
</table>
</body>
</html>
