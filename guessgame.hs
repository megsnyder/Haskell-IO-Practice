{-
    The following program is a game that asks the user to think of a number between 
    one and ten. The program asks a series of yes or no questions to figure out what
    the number is. The program is not very clever.
    
    Your task is to modify this program so that it asks the user to think of a number
    between one and one thousand! Your program should be able to guess the number 
    in only eleven questions or fewer! 
    
    Hint: You can ask questions like, "Is your number greater than 500?"
    Hint: You can change as much of this program as you want. It is only
          here to serve as a simple example.
          
    Here is some sample output (I am thinking of the number 889):

    Think of a number between 1 and 1000 and I will guess it.
    Is your number greater than 500? (answer "yes" or "no") 
    yes
    Is your number greater than 750? (answer "yes" or "no") 
    yes
    Is your number greater than 875? (answer "yes" or "no") 
    yes
    Is your number greater than 938? (answer "yes" or "no") 
    no
    Is your number greater than 907? (answer "yes" or "no") 
    no
    Is your number greater than 891? (answer "yes" or "no") 
    no
    Is your number greater than 883? (answer "yes" or "no") 
    yes
    Is your number greater than 887? (answer "yes" or "no") 
    yes
    Is your number greater than 889? (answer "yes" or "no") 
    no
    Is your number 888? (answer "yes" or "no") 
    no
    Your number is 889, right? (answer "yes" or "no") 
    yes
    I KNEW IT! Thank you.


-}
guessIt :: Int -> Int -> IO ()
guessIt x y= do
    if x-y<2 then do 
        putStrLn $ "Is your number " ++ show x ++ "? (answer \"yes\" or \"no\") "
        guess <- getLine
        if guess == "yes" then putStrLn "I KNEW IT! Thank you."
        else do
            putStrLn $ "Your number is " ++ show y ++ ", right? (answer \"yes\" or \"no\") "
            guess <- getLine
            if guess == "yes" then putStrLn "I KNEW IT! Thank you."
            else putStrLn "Sorry about that."
        
    else do 
        putStrLn $ "Is your number greater than " ++ show (((x-y) `div` 2)+y) ++ "? (answer \"yes\" or \"no\") "
        guess <- getLine
        if guess == "yes" then guessIt x (((x-y) `div` 2)+y)
        else guessIt (((x-y) `div` 2)+y) y

main = do
    putStrLn "Think of a number between 1 and 1000 and I will guess it."
    guessIt 1000 0