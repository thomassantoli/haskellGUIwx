module Main where
import Graphics.UI.WX

main :: IO ()
main
  = start btns_text

btns_text :: IO ()
btns_text
  = do 
       f    <- frame    [text := "Some stuff going on."]
       g <- frame [ text := "add something..."]
       vn    <- varCreate 0
       quit <- button f [text := "Quit", on command := close f >> close g]
       set f [layout := margin 500 (widget quit)]
       add  <- button g [text := "Add", on command := varUpdate vn succ >> do {n <- varGet vn; set g [ text := show n ]}]
       del  <- button g [text := "Delete", on command := varUpdate vn pred >> do {n <- varGet vn; set g [ text := show n ]}]
       set g [layout := margin 300 (column 5 [label "hey", widget add, widget del])]





