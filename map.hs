type Color = String
type Country = String
colors = ["red", "yellow", "blue", "green"]
countries = ["Russia", "Ukraine", "Belorussia", "Poland", "Germany", "France", "Austria", "Mongolia", "Chinese"]

neighbors :: Country -> [Country]
neighbors country 
	|country == "France" = ["Germany"]
	|country == "Germany" = ["France", "Austria", "Poland"]
	|country == "Austria" = ["Germany"]
	|country == "Poland" = ["Germany", "Belorussia", "Ukraine"]
	|country == "Belorussia" = ["Poland", "Ukraine", "Russia"]
	|country == "Ukraine" = ["Belorussia", "Russia", "Poland"]
	|country == "Russia" = ["Belorussia", "Ukraine", "Mongolia", "Chinese"]
	|country == "Mongolia" = ["Russia", "Chinese"]
	|country == "Chinese" = ["Russia", "Mongolia"]
	
type Coloring = [(Country, Color)]

safeColor :: Coloring -> Country -> Color -> Bool
