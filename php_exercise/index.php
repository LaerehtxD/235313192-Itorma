<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Php Exercise</title>
</head>
<body>

<?php
//exercise 1
    echo "Exercise 1: Variables and Operators <br>";
    $a = 15;
    $b = 7;
    echo "<p>The sum of ".$a." and ". $b ."is ". ($a + $b) .".</p>";
    echo "<p>The difference of ". $a ." and ". $b ." is ". ($a - $b) .".</p>";
    echo "<p>The product of ". $a ." and ". $b ." is ". ($a * $b) .".</p>";
    echo "<p>The quotient of ". $a ." and ". $b ." is ". ($a / $b) .".</p>";
    echo"<br>";
?>

<?php
//exercise 2
    echo "Exercise 2: Conditional Statements <br>";
    $number = 10;
    echo "The number is ". $number . "<br>";
    if($number % 2 == 0){
        echo "The number is even. ";
        if($number > 0){
            echo "And the number is also positive";     
        }
        elseif($number < 0){
            echo "And the number is also negative";
        }
        elseif($number == 0){
            echo "And the number is also equal to 0";
        }
    }
    elseif($number % 2 != 0){
        echo "The number is odd. ";
        if($number > 0){
            echo "And the number is also positive";     
        }
        elseif($number < 0){
            echo "And the number is also negative";
        }
        elseif($number == 0){
            echo "And the number is also equal to 0";
        }
    }
    echo"<br>";
    echo"<br>";
    echo"<br>";
?>

<?php
//exercise 3
    echo "Exercise 3: Loops <br>";
    echo"<br>";

    echo "FizzBuzz:<br>";
    for ($i = 1; $i <= 100; $i++) {
        if($i % 3 == 0){
            if($i % 5 == 0){
                echo "FizzBuzz, ";
            }
            else{
                echo "Fizz, ";
            }
        }
        elseif($i % 5 == 0){
            if($i % 3 == 0){
                echo "FizzBuzz, ";
            }
            else{
                echo "Buzz, ";
            }
    }
    }

  

    echo"<br>";
    echo"<br>";

    echo"Fibonacci:<br>";
    $n = 10;  
    $fib = [0, 1]; 

    for ($i = 2; $i < $n; $i++) {
        $fib[$i] = $fib[$i - 1] + $fib[$i - 2];
    }

    foreach ($fib as $num) {
        if ($num % 2 == 0) {
            echo $num . " ";
        }
    }
    echo"<br>";
    echo"<br>";
    echo"<br>";
?>

<?php
//exercise 4
    echo "Exercise 4: Functions <br>";
    echo"<br>";
    echo"Greeting function:<br>";
    function greet($name) {
        return "Good day, " . $name . "! Nice meeting you!";
    }
    echo greet("Daryl");
    echo"<br>";
    echo"<br>";
    echo"Square function:<br>";

    function square($num) {
        return $num * $num;
    }
    
    echo"Square of number 10: ";
    echo square(10);

    echo"<br>";
    echo"<br>";

?>
    <h5>Exercise 5: Form Handling <br></h5>
    <h5>HTML Form:<br></h5>
    <h2>Enter Some Text:</h2>
        <form action="data.php" method="post">
            <input type="text" name="user_text" required>
            <button type="submit">Submit</button>
        </form>
    

    
</body>
</html>