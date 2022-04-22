import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> Int -> String
svgCircle x y r style strokeW = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' stroke='black' stroke-width='%d' />\n" x y r style strokeW

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)" 3) ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)" 4) ++ 
  (svgCircle 250 250 50 "rgb(0, 153, 204, 0.3)" 0) ++ 
  (svgCircle 250 250 40 "rgb(0, 153, 204, 0.4)" 0) ++ 
  (svgCircle 250 250 30 "rgb(0, 153, 204, 0.5)" 0) ++ 
  (svgCircle 250 250 20 "rgb(0, 153, 204, 0.6)" 0) ++ 
  (svgCircle 250 250 10 "rgb(0, 153, 204, 0.7)" 0) ++ 
  (svgCircle 250 250 250 "rgb(204, 204, 255, 0.1)" 0) ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll