Feature: Take courses and student names
	Scenario Outline: An advisor wants to know how many classes a student has taken in total
		Given a professor wants to find a student <first> <last> and the total number of classes he has taken
		Then the number of classes <total>

Examples:
|first      | last 		    | total  |
|"Nellie"   | "Livingston"  |  20	 |
|"Allen"    | "Holmes"      |  24 	 |
|"Martha"   | "Davis"       |  25 	 |
|"Kip"      | "Harrison"    |  30 	 |
|"Daniel"   | "Dodson"      |  20 	 |
|"Charlotte"| "Davidson"    |  23 	 |
|"Keith"    | "Dunn"        |  24    |
|"Gladys"   | "Breeden"     |  21    |
|"Gilbert"  | "Reno"        |  27    |
|"Hazel"    | "Goulette"    |  22    |
|"David"    | "Wideman"     |  30    |
|"Amy"      |"Brandenberger"|  7     |
|"Glenda"   |"Harris"       |  18    |
|"Irma"     |"Murphy"       |  24    |
|"Candice"  |"Ward"         |  24    |
|"Beverly"  |"Chapman"      |  14    | 
|"Ruth"     |"Bostick"      |  27    |
|"Brandon"  |"Raybon"       |  20    |
|"Michelle" |"Mccool"       |  27    |
|"Carl"     |"Nellis"       |  4     |
|"John"     |"Allen"        |  13    |
|"Shirley"  |"Combee"       |  13    |
|"James"    |"Johnson"      |  7     |
|"Richard"  |"Perez"        |  39    |
|"Paul"     |"Craig"        |  7     |
|"Joyce"    |"Nelson"       |  22    |
|"Edward"   |"Strother"     |  14    | 
|"Jamie"    |"Lopez"        |  22    |
|"Ruby"     |"Livingston"   | 30     |
|"Peggy"    |"Hollingsworth"|  20    |
|"Geraldine"|"Boyd"         |  29    |
|"Francisca"|"Hart"         |  32    |
|"John"     |"Seiter"       |  4     |
|"Martina"  |"Espinoza"     |  20    |
|"Christopher"|"Gibson"     |  34    |
|"Richard"  |"Marquez"      |  21    |
|"Sonia"    |"Peak"         |  9     |
|"Anita"    |"Denning"      |  16    |
|"Jamie"    |"Ball"         |  14    |
|"Edith"    |"Williams"     |  18    |
|"Guillermo"|"Castaneda"    |  7     |
|"Teresa"   |"Durand"       |  21    |
|"Dwayne"   |"Simcox"       |  10    |
|"William"  |"Sammons"      |  41    |
|"Michael"  |"Weed"         |  8     |
|"Frederick"|"Taylor"       |  11    |
|"Susan"    |"Vanscoy"      |  34    |
|"Sarah"    |"Grigsby"      |  35    |
|"Louis"    |"Fulbright"    |  22    |
|"Eloise"   |"Stout"        |  34    |
|"Oscar"    |"Spencer"      |  4     |
|"Jeremy"   |"Santiago"     |  31    |
|"William"  |"Sauer"        |  39    |
|"Irene"    |"Rash"         |  36    |
|"Lindsey"  |"West"         |  7     |
|"Melita"   |"Moody"        |  29    |
|"Francisco"|"Huppert"      |  34    |
|"Robert"   |"Beier"        |  34    |
|"Sylvia"   |"Anderson"     |  32    |
|"Jeffery"  |"Gore"         |  38    |
|"Wilma"    |"Cooper"       |  27    |
|"Randall"  |"Gill"         |  12    |
|"Jose"     |"Guerra"       |  4     |
|"Renay"    |"Hunley"       |  3     |
|"Sylvia"   |"Anderson"     |  32    |
|"Jeffery"  |"Gore"         |  38    |
|"Wilma"    |"Cooper"       |  27    |
|"Randall"  |"Gill"         |  12    |
|"Jose"     |"Guerra"       |  4     |
|"Renay"    |"Hunley"       |  3     |
|"Kathleen" |"Miller"       |  36    |
|"Matthew"  |"Ferguson"     |  19    |
|"Cory"     |"Bowen"        |  19    |
|"Antonio"  |"Yunker"       |  18    |
|"Robert"   |"Edwards"      |  32    |
|"Roland"   |"Harnden"      |  7     |
|"Maurice"  |"Robertson"    |  6     |
|"Dean"     |"Reynolds"     |  20    |
|"Elena"    |"Kelly"        |  12    |
|"Richard"  |"Allen"        |  6     |
|"Miquel"   |"Oconnell"     |  7     |
|"Ross"     |"Johnson"      |  8     |
|"Vivian"   |"Fuller"       |  17    |
|"Robert"   |"Pflieger"     |  10    |
|"William"  |"Nicholson"    |  10    |
|"Maureen"  |"Paulino"      |  7     |
|"Archie"   |"Murray"       |  27    |
|"Alice"    |"Finan"        |  28    |
|"Amy"      |"Cahoon"       |  7     |
|"Horace"   |"Evans"        |  16    |
|"Randy"    |"Hashimoto"    |  3     |
|"Ralph"    |"Sams"         |  14    |
|"Matthew"  |"Hackleman"    |  6    |
