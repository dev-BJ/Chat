<?php
session_start();
include "db/db.php";

$id=strtoupper($_SESSION['id']);
$lt=strtoupper($_SESSION['lt_id']);

$sql="SELECT * FROM `message` WHERE (idf='$id' AND ids='$lt') OR (idf='$lt' AND ids='$id')";
$sql=$db->query($sql);
if(!$sql) echo $db->error;

if(isset($_POST['btn_log'])){
    
    if(isset($_POST['msg'])){
        $id=strtoupper($_POST['id']);
        $lt=strtoupper($_POST['lt_id']);
        $msg=$_POST['msg'];

    $sqli="INSERT INTO `message`(`idf`,`ids`,`msg`) VALUES ('$id','$lt','$msg')";
    $sqli=$db->query($sqli);
    var_dump($db->error);

        if($sqli){
                header("Location: chat.php");
        }else{
            $msg="An error occured";
        }
    }else{
        $msg="No message entered";
    }
}
?>

<!DOCTYPE html>
    <html>
        <head>
            <meta name="viewport" content="initial-scale=1.0,width=device-width" />
            <link href="css/style.css" rel="stylesheet" type="text/css" />
            <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
            <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        </head>
        <body class="app">
        <div class=" container-fluid">
                    <div class="sleft">
                        <div>
                            <?php
                            if($sql->num_rows>0){
                                while($msg=$sql->fetch_assoc()):
                            ?>
                            <div class="msg">
                                <div class="id">
                                <div class="idf"><?=$msg['idf']==$id?"":$msg['idf']; ?></div>
                                <div class="ids"><?=$msg['ids']==$id?"":$msg['ids']; ?></div>
                                </div>
                                <div class="txt"><?=$msg['msg']; ?></div>
                            </div>
                            <?php
                            endwhile;
                            }else{
                                echo "No message";
                            }
                            ?>
                        </div>
                    </div>
                    <div class="sright">
                    <form method="post" class="form-group row" >
                    <textarea class="form-control" name="msg" placeholder="Message" ></textarea>
                    <input type="text" class="form-control" name="lt_id" value="<?=$_SESSION['lt_id'];?>" style="display:none" /><br>
                    <input type="text" class="form-control" name="id" value="<?=$_SESSION['id'];?>" style="display:none" />
                    <input type="submit" href="#" class="btn btn-primary fa fa-check" name="btn_log" />
                    </form>
                    <?php if(isset($msg)) echo "<div class='text text-warning'>$msg</div>"; ?>
                    <a href="logout.php" class="btn btn-warning" >Logout</a>
                    </div>
                </div>
        </body>
        <footer></footer>
    </html>