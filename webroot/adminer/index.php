<?php 

function adminer_object() {
  class AdminerSoftware extends Adminer {
  }
  
  return new AdminerSoftware;
}

include "./adminer.php";
?>