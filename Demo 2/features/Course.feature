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
|"Ruby"     |"Livingston"   |  30    |
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

	Scenario Outline: An advisor wants to know how many students are in one class
		Given a professor wants to find how many students took class <course_number><section_number><class_name>
		Then the number of students <total>
Examples:
|course_number|section_number|class_name|total|
|324|"1"|"Accounting Information Systems"|139|
|382|"1"|"Agribusiness Management"|59|
|360|"L3"|"Horses & Horsemanship"|32|
|213|"1"|"Figure Drawing II"|87|
|105|"1"|"Two-Dimensional Design"|114|
|102|"T04"|"Life, Literature and Community"|101|
|102|"T03"|"Life, Literature and Community"|110|
|432|"1"|"Introduction to Linguistics"|43|
|421|"3"|"Voice Major"|3|
|303|"1"|"JMC Colloquia"|42|
|102|"MT1"|"LifeLiterature&Community"|45|
|102|"T06"|"Life, Literature and Community"|158|
|102|"T07"|"Life, Literature and Community"|192|
|106|"2"|"Three-Dimensional Design"|38|
|106|"1"|"Three-Dimensional Design"|98|
|423|"1"|"Art History: 20th Century"|94|
|206|"2"|"Strength Training"|142|
|211|"2"|"Message of the Old Testament"|313|
|111|"L2"|"Elementary Spanish I"|45|
|130|"5"|"Environmental & Tech Science"|131|
|111|"4"|"Elementary Spanish I"|62|
|361|"1"|"Ceramics I"|58|
|133|"1"|"General Chemistry I"||
|490|"3"|"Adv Stu Prob: Adv.  Printmakin"|1|
|472|"1"|"Intro to Hebrew II"|14|
|102|"T12"|"Life, Literature and Community"|209|
|102|"HT3"|"Life, Lit. & Community(Honors)"|48|
|102|"T05"|"Life, Literature and Community"|126|
|102|"T10"|"Life, Literature and Community"|163|
|490|"4"|"Adv. Stud. Prob. Fig.Drawing"|1|
|190|"2"|"Adv. Stu. Problems: Paint. 111"|1|
|341|"1"|"Painting I"|81|
|332|"1"|"Sculpture II"|17|
|486|"2"|"Ethics"|63|
|185|"2"|"Calculus I"|154|
|497|"1"|"Special Problems in ANSC"|19|
|392|"1"|"Animal Health"|29|
|483|"1"|"Ruminant Livestock Production"|8|
|485|"1"|"Ethics & Professional Dev."|33|
|250|"1"|"Fundamental Skills of Relating"|125|
|222|"1"|"Art History: General Survey II"|128|
|661|"1"|"Theo Expl:Epistemology of Theo"|14|
|400|"1"|"GS: Ethiopic"|1|
|362|"1"|"Ceramics II"|13|
|311|"1"|"Intermediate Accounting II"|241|
|400|"2"|"GS:Intermediate Hebrew Rdg II"|1|
|652|"W1"|"Hist/Christ. II: Reform-Presnt"|49|
|113|"H1"|"General Biology II (Honors)"|34|
|113|"2"|"General Biology II"|104|
|115|"L6"|"General Biology II Lab"|54|
|451|"J1"|"Sex & Pers Issues of Sexuality"|118|
|395|"1"|"Intro to Hospital Ministry"|26|
|106|"3"|"Three-Dimensional Design"|21|
|442|"1"|"Ag. & Nat. Resource Policy"|10|
|405|"1"|"Fundamentals of Auditing"|166|
|604|"2"|"MFT Internship III"|12|
|120|"T1"|"Quantitative Reasoning"|403|
|211|"T3"|"Speech and Rhetoric"|145|
|231|"5"|"World Literature I"|28|
|221|"1"|"New Tstmnt Greek for Begin I"|49|
|223|"1"|"Organic Chemistry I"|161|
|260|"3"|"Principles of Macroeconomics"|126|
|210|"4"|"Human Identity and Community"|350|
|382|"1"|"American Presidency"|21|
|117|"2"|"Civilization I"|183|
|241|"2"|"First Aid/CPR"|37|
|603|"2"|"MFT Internship II"|14|
|110|"T16"|"Cornerstone"|89|
|133|"2"|"General Chemistry I"|141|
|110|"T25"|"Cornerstone"|94|
|101|"MT1"|"Jesus: His Life and Teachings"|124|
|217|"1"|"English and Italian Diction"|37|
|115|"1"|"Crit. Think., Identity, Com."|184|
|140|"2"|"S.T: Eng. Comp. Based Design"|20|
|101|"1"|"Astronomy"|888|
|240|"L1"|"S.T: Digital Logic Lab"|9|
|439|"2"|"Strategic Management"|206|
|282|"1"|"Abnormal Psychology"|326|
|261|"2"|"Principles of  Microeconomics"|232|
|493|"L1"|"Human Anatomy Lab"|97|
|103|"1"|"Story of the New Testament"|33|
|699|"2"|"Master's Thesis"|28|
|642|"1"|"Seminar in Communication"|36|
|675|"Z2A"|"Sem in Persuasion & Social Chg"|16|
|331|"1"|"Tchg Soc Stud in Pre K-Grd 8"|115|
|439|"1"|"Strategic Management"|244|
|440|"2"|"S.T: Sociology of the Family"|22|
|221|"6"|"Message of the Old Testament"|242|
|112|"1"|"Composition and Literature"|172|
|111|"19"|"Composition and Rhetoric"|77|
|101|"1"|"Introduction to Art"|152|
|130|"4"|"Environmental & Tech Science"|180|
|118|"2"|"Civilization II"|167|
|110|"7"|"Lifetime Wellness"|74|

