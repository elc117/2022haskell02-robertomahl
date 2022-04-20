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

--4
bigCircles :: Float -> [Float] -> [Float]
bigCircles n r = filter (\x -> pi * x ^ 2 > n) r

--5
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena l = filter (\(_, temperatura) -> eFebre temperatura) l

--6
idadesEm :: [Int] -> Int -> [Int]
idadesEm lista ano = map (\nasc -> ano - nasc) lista

--7
changeNames :: [String] -> [String]
changeNames nomes = map (\n -> if head n == 'A' then "Super " ++ n else n) nomes

--8
onlyShorts :: [String] -> [String]
onlyShorts lista = filter (\p -> length p < 5) lista
