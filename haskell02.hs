--1
eFebre :: Float -> Bool
eFebre t = t > 37.8

comFebre :: [Float] -> [Float]
comFebre t = filter eFebre t

--2
comFebre' :: [Float] -> [Float]
comFebre' t = filter (\ t -> t > 37.8) t

--3
itemize :: [String] -> [String]
itemize l = map (\x -> "<li>" ++ x ++ "</li>") l

--4 Precisa retornar os raios e não as áreas
--bigCircles :: Float -> [Float] -> [Float]
--bigCircles n r = filter (\x -> x > n) $ map (\y -> pi * y ^ 2) r

--5
--quarentena :: [(String,Float)] -> [(String,Float)]
--quarentena 