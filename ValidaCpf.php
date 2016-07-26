<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
</head>
<body>
<?php
function validaCPF(){
    $cpf =$_GET["cpf"];
    $cpf = preg_replace('/[^0-9]/','',$cpf);
    $digitoA = 0;
    $digitoB =0;

    for($i =0, $x = 10; $i <= 8; $i++, $x--){
        $digitoA += $cpf[$i]*$x;

    }
    for($i =0, $x = 11; $i <= 9; $i++, $x--){
        $digitoB += $cpf[$i]*$x;
        if(str_repeat($i,11)== $cpf){
            return false;
            return;
        }
    }
    $digitoA =(($digitoA%11)< 2 ) ? 0 : 11-($digitoA%11);
    $digitoB =(($digitoB%11)< 2 ) ? 0 : 11-($digitoB%11);
    if($digitoA != $cpf[9] || $digitoB != $cpf[10]) {
        return false;
    }else{
        return true;
    }
}
?>
</body>
</html>