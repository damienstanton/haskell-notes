module Notes where
    -- smoke test 
    ok :: String -> String
    ok s = "OK, " ++ s

    -- fix broken expression
    -- see https://wiki.haskell.org/Let_vs._Where
    f_where :: Int
    f_where = x + y
        where
            x = 7
            y = 10

    -- or the let variant
    f_let :: Int
    f_let =
        let x = 7
            y = 10
         in x + y

    -- beware of combining $ with right infix ops
    -- 10 ^ $ 1 + 1 does not compile
    -- 10 ^ (1 + 1) compiles and returns 100, as expected
