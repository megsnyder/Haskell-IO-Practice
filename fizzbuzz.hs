{- 
    Write an interactive program that does the FizzBuzz problem that was in
    an earlier homework assignment. Here is an example of how the program should work:

    How many numbers shall we print? 25
    For multiples of what number shall we print 'Fizz'? 3
    For multiples of what number shall we print 'Buzz'? 5
    1
    2
    Fizz
    4
    Buzz
    Fizz
    7
    8
    Fizz
    Buzz
    11
    Fizz
    13
    14
    FizzBuzz
    16
    17
    Fizz
    19
    Buzz
    Fizz
    22
    23
    Fizz
    Buzz
    
    Tips:
    
    * Example of getting an Integer (as opposed to a String) from the user: 
        numVariable  <- readLn
      (Clarification: It gets whatever data type is required.)
    
    * Use your fizzBuzz function from the lists homework assignment. You can
      copy that code into this file.
      
    * Use mapM_ with putStrLn to print the result of calling fizzBuzz.

-}

-- Copy your fizzBuzz function and supporting functions here
fizzBuzz n f b = [ if  x `mod` f == 0 && x `mod` b == 0 then "FizzBuzz" else if  x `mod` f == 0 then "Fizz" else if  x `mod` b == 0 then "Buzz" else show x | x <- [1..n]]



main = do
    putStrLn "How many numbers shall we print?"
    num <- readLn
    putStrLn "For multiples of what number shall we print 'Fizz'?"
    mf <- readLn
    putStrLn "For multiples of what number shall we print 'Buzz'?"
    mb <- readLn
    mapM_ putStrLn (fizzBuzz num mf mb)

