module Main where
import Graphics.UI.WX
import System.Command

main :: IO ()
main
  = start button_process

button_process :: IO ()
button_process
  = do 
       f    <- frame    [text := "Waiting for command"]
       vn    <- varCreate 0
       quit <- button f [text := "Quit", on command := close f ]
       runnit  <- button f [text := "Run", on command := print "hoho" >> example_cmd ]
       set f [layout := margin 300 (column 5 [label "hey", widget runnit, widget quit])]


example_cmd = runCommand "ls" >> return ()

-- this works too
dotnet_cmd = runCommand "cd ../../consoleApp/; dotnet run works;" >> return ()


