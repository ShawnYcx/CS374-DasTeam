Feature: Take courses and student names

	Scenario Outline: An advisor wants to know how many classes a student has taken in total
		Given a professor wants to find a student "<first>" "<last>" and the total number of classes he has taken
		Then the number of classes "<total>"

Examples:
|first      | last 		    | total  |
|Nellie   | Livingston  |  20	 |
|Allen    | Holmes      |  24 	 |
|Martha   | Davis       |  25 	 |
|Kip      | Harrison    |  30 	 |
|Daniel   | Dodson      |  20 	 |
|Charlotte| Davidson    |  23 	 |
|Keith    | Dunn        |  24    |
|Gladys   | Breeden     |  21    |
|Gilbert  | Reno        |  27    |
|Hazel    | Goulette    |  22    |
|David    | Wideman     |  30    |
|Amy      |Brandenberger|  7     |
|Glenda   |Harris       |  18    |
|Irma     |Murphy       |  48    |
|Candice  |Ward         |  24    |
|Beverly  |Chapman      |  14    | 
|Ruth     |Bostick      |  27    |
|Brandon  |Raybon       |  20    |
|Michelle |Mccool       |  27    |
|Carl     |Nellis       |  4     |
|John     |Allen        |  14    |
|Shirley  |Combee       |  13    |
|James    |Johnson      |  12    |
|Richard  |Perez        |  39    |
|Paul     |Craig        |  7     |
|Joyce    |Nelson       |  22    |
|Edward   |Strother     |  14    | 
|Jamie    |Lopez        |  23    |
|Ruby     |Livingston   |  30    |
|Peggy    |Hollingsworth|  20    |
|Geraldine|Boyd         |  29    |
|Francisca|Hart         |  32    |
|John     |Seiter       |  4     |
|Martina  |Espinoza     |  20    |
|Christopher|Gibson     |  34    |
|Richard  |Marquez      |  21    |
|Sonia    |Peak         |  9     |
|Anita    |Denning      |  16    |
|Jamie    |Ball         |  14    |
|Edith    |Williams     |  18    |
|Guillermo|Castaneda    |  7     |
|Teresa   |Durand       |  21    |
|Dwayne   |Simcox       |  10    |
|William  |Sammons      |  41    |
|Michael  |Weed         |  8     |
|Frederick|Taylor       |  11    |
|Susan    |Vanscoy      |  34    |
|Sarah    |Grigsby      |  35    |
|Louis    |Fulbright    |  35    |
|Eloise   |Stout        |  34    |
|Oscar    |Spencer      |  4     |
|Jeremy   |Santiago     |  31    |
|William  |Sauer        |  39    |
|Irene    |Rash         |  36    |
|Lindsey  |West         |  7     |
|Melita   |Moody        |  29    |
|Francisco|Huppert      |  34    |
|Robert   |Beier        |  34    |
|Sylvia   |Anderson     |  32    |
|Jeffery  |Gore         |  38    |
|Wilma    |Cooper       |  27    |
|Randall  |Gill         |  12    |
|Jose     |Guerra       |  4     |
|Renay    |Hunley       |  3     |
|Sylvia   |Anderson     |  32    |
|Jeffery  |Gore         |  38    |
|Wilma    |Cooper       |  27    |
|Randall  |Gill         |  12    |
|Jose     |Guerra       |  4     |
|Renay    |Hunley       |  3     |
|Kathleen |Miller       |  36    |
|Matthew  |Ferguson     |  19    |
|Cory     |Bowen        |  19    |
|Antonio  |Yunker       |  18    |
|Robert   |Edwards      |  32    |
|Roland   |Harnden      |  7     |
|Maurice  |Robertson    |  6     |
|Dean     |Reynolds     |  20    |
|Elena    |Kelly        |  12    |
|Richard  |Allen        |  6     |
|Miquel   |Oconnell     |  7     |
|Ross     |Johnson      |  8     |
|Vivian   |Fuller       |  17    |
|Robert   |Pflieger     |  10    |
|William  |Nicholson    |  10    |
|Maureen  |Paulino      |  7     |
|Archie   |Murray       |  27    |
|Alice    |Finan        |  28    |
|Amy      |Cahoon       |  7     |
|Horace   |Evans        |  16    |
|Randy    |Hashimoto    |  3     |
|Ralph    |Sams         |  33    |

	Scenario Outline: An advisor wants to know how many students are in one class
		Given a professor wants to find how many students took class <course_number> section <section_number> class name <class_name>
		Then the number of students <total>
Examples:
|course_number|section_number|class_name|total|
|324|1|Accounting Information Systems|139|
|382|1|Agribusiness Management|59|
|360|L3|Horses & Horsemanship|32|
|213|1|Figure Drawing II|87|
|105|1|Two-Dimensional Design|114|
|102|T04|Life, Literature and Community|101|
|102|T03|Life, Literature and Community|110|
|432|1|Introduction to Linguistics|43|
|421|3|Voice Major|3|
|303|1|JMC Colloquia|42|
|102|MT1|LifeLiterature&Community|45|
|102|T06|Life, Literature and Community|158|
|102|T07|Life, Literature and Community|192|
|106|2|Three-Dimensional Design|38|
|106|1|Three-Dimensional Design|98|
|423|1|Art History: 20th Century|94|
|206|2|Strength Training|142|
|211|2|Message of the Old Testament|313|
|111|L2|Elementary Spanish I|45|
|130|5|Environmental & Tech Science|131|
|111|4|Elementary Spanish I|62|
|361|1|Ceramics I|58|
|133|1|General Chemistry I|132|
|490|3|Adv Stu Prob: Adv.  Printmakin|1|
|472|1|Intro to Hebrew II|14|
|102|T12|Life, Literature and Community|209|
|102|HT3|Life, Lit. & Community(Honors)|48|
|102|T05|Life, Literature and Community|126|
|102|T10|Life, Literature and Community|163|
|490|4|Adv. Stud. Prob. Fig.Drawing|1|
|190|2|Adv. Stu. Problems: Paint. 111|1|
|341|1|Painting I|81|
|332|1|Sculpture II|17|
|486|2|Ethics|63|
|185|2|Calculus I|154|
|497|1|Special Problems in ANSC|19|
|392|1|Animal Health|29|
|483|1|Ruminant Livestock Production|8|
|485|1|Ethics & Professional Dev.|33|
|250|1|Fundamental Skills of Relating|125|
|222|1|Art History: General Survey II|128|
|661|1|Theo Expl:Epistemology of Theo|14|
|400|1|GS: Ethiopic|1|
|362|1|Ceramics II|13|
|311|1|Intermediate Accounting II|241|
|400|2|GS:Intermediate Hebrew Rdg II|1|
|652|W1|Hist/Christ. II: Reform-Presnt|49|
|113|H1|General Biology II (Honors)|34|
|113|2|General Biology II|104|
|115|L6|General Biology II Lab|54|
|451|J1|Sex & Pers Issues of Sexuality|118|
|395|1|Intro to Hospital Ministry|26|
|106|3|Three-Dimensional Design|21|
|442|1|Ag. & Nat. Resource Policy|10|
|405|1|Fundamentals of Auditing|166|
|604|2|MFT Internship III|12|
|120|T1|Quantitative Reasoning|403|
|211|T3|Speech and Rhetoric|145|
|231|5|World Literature I|28|
|221|1|New Tstmnt Greek for Begin I|49|
|223|1|Organic Chemistry I|161|
|260|3|Principles of Macroeconomics|126|
|210|4|Human Identity and Community|350|
|382|1|American Presidency|21|
|117|2|Civilization I|183|
|241|2|First Aid/CPR|37|
|603|2|MFT Internship II|14|
|110|T16|Cornerstone|89|
|133|2|General Chemistry I|141|
|110|T25|Cornerstone|94|
|101|MT1|Jesus: His Life and Teachings|124|
|217|1|English and Italian Diction|37|
|115|1|Crit. Think., Identity, Com.|184|
|140|2|S.T: Eng. Comp. Based Design|20|
|101|1|Astronomy|888|
|240|L1|S.T: Digital Logic Lab|9|
|439|2|Strategic Management|206|
|282|1|Abnormal Psychology|326|
|261|2|Principles of  Microeconomics|232|
|493|L1|Human Anatomy Lab|97|
|103|1|Story of the New Testament|33|
|699|2|Master's Thesis|28|
|642|1|Seminar in Communication|36|
|675|Z2A|Sem in Persuasion & Social Chg|16|
|331|1|Tchg Soc Stud in Pre K-Grd 8|115|
|439|1|Strategic Management|244|
|440|2|S.T: Sociology of the Family|22|
|221|6|Message of the Old Testament|242|
|112|1|Composition and Literature|172|
|111|19|Composition and Rhetoric|77|
|101|1|Introduction to Art|152|
|130|4|Environmental & Tech Science|180|
|118|2|Civilization II|167|
|110|7|Lifetime Wellness|74|

Scenario Outline: An advisor wants to know if a student is capable to take a class
		Given a professor wants to know if a list of Students "<first_Name>""<last_Name>"<Banner_ID>" are capable to take a Class "<Subject_Code>""<Course_Number>"
		When the Class has a Preq_list "<Preq_list>"
		And a Student has taken these list of Classes "<Subject_Code_List>""<Course_Number_List>"
		Then the should be in this Class "<Result>"

Examples:
|first_Name|last_Name|Banner_ID|Subject_Code|Course_Number|Preq_list|Subject_Code_List|Course_Number_List|Result|
|Bernard|Duffy|817979|ACCT|302||||T|
|Bernard|Duffy|817979|ACCT|304||ACCT|302|T|
|Bernard|Duffy|817979|ACCT|324||ACCT,ACCT|302,304|T|
|Bernard|Duffy|817979|ACCT|410|ACCT310,ACCT324|ACCT,ACCT,ACCT|302,304,324|F|
|Bernard|Duffy|817979|ACCT|405|ACCT310|ACCT,ACCT,ACCT|302,304,324|F|
|Bernard|Duffy|817979|ENGL|263||||T|
|Bernard|Duffy|817979|ENGL|326||ENGL|263|T|
|Bernard|Duffy|817979|FIN|311|ECON260,ECON261|ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|F|
|Bernard|Duffy|817979|FIN|411|BUSA120|ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|F|
|Bernard|Duffy|817979|FIN|412|BUSA120,ACCT210|ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|F|
|Bernard|Duffy|817979|MGMT|331|BUSA120|ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|F|
|Bernard|Duffy|817979|MGMT|439|BUSA120,MGMT330,MGMT331|ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|F|
|Bernard|Duffy|817979|PEAC|351||ACCT,ACCT,ACCT,ENGL,ENGL|302,304,324,263,326|T|
|Bernard|Duffy|817979|PEAC|239||ACCT,ACCT,ACCT,ENGL,ENGL,PEAC|302,304,324,263,326,351|T|
|Bernard|Duffy|817979|BIBT|332||ACCT,ACCT,ACCT,ENGL,ENGL,PEAC,PEAC|302,304,324,263,326,351,239|T|
|Bernard|Duffy|817979|BUSA|419||ACCT,ACCT,ACCT,ENGL,ENGL,PEAC,PEAC,BIBT|302,304,324,263,326,351,239,332|T|
|Bernard|Duffy|817979|BUSA|419||ACCT,ACCT,ACCT,ENGL,ENGL,PEAC,PEAC,BIBT,BUSA|302,304,324,263,326,351,239,332,419|T|
|Bernard|Duffy|817979|BLAW|461|ACCT210,ACCT304,BLAW363|ACCT,ACCT,ACCT,ENGL,ENGL,PEAC,PEAC,BIBT,BUSA|302,304,324,263,326,351,239,332,419|F|
|Bernard|Duffy|817979|PSYC|120||ACCT,ACCT,ACCT,ENGL,ENGL,PEAC,PEAC,BIBT,BUSA|302,304,324,263,326,351,239,332,419|T|
|Carmen|Arnhart|361136|ACCT|304||||T|
|Carmen|Arnhart|361136|ACCT|311||ACCT|304|T|
|Carmen|Arnhart|361136|ACCT|324||ACCT,ACCT|304,311|T|
|Carmen|Arnhart|361136|ACCT|420||ACCT,ACCT,ACCT|304,311,324|T|
|Carmen|Arnhart|361136|FIN|311|ECON260,ECON261|ACCT,ACCT,ACCT,ACCT|304,311,324,420|F|
|Carmen|Arnhart|361136|FIN|411|BUSA120|ACCT,ACCT,ACCT,ACCT|304,311,324,420|F|
|Carmen|Arnhart|361136|FIN|412|BUSA120,ACCT210|ACCT,ACCT,ACCT,ACCT|304,311,324,420|F|
|Carmen|Arnhart|361136|FIN|420|ACCT210,ACCT211|ACCT,ACCT,ACCT,ACCT|304,311,324,420|F|
|Carmen|Arnhart|361136|BIBL|460||ACCT,ACCT,ACCT,ACCT|420|T|
|Carmen|Arnhart|361136|BUSA|419||ACCT,ACCT,ACCT,ACCT,BIBL|304,311,324,420,460|T|
|Carmen|Arnhart|361136|CORE|340||ACCT,ACCT,ACCT,ACCT,BIBL,BUSA|304,311,324,420,460,419|T|
|Carmen|Arnhart|361136|BLAW|461|ACCT210,ACCT304,BLAW363|ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE|304,311,324,420,460,419,340|F|
|Carmen|Arnhart|361136|MGMT|330|BUSA120|ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE|304,311,324,420,460,419,340|F|
|Carmen|Arnhart|361136|MGMT|439|BUSA120,MGMT330,MGMT331|ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE|304,311,324,420,460,419,340|F|
|Carmen|Arnhart|361136|PEAC|140||ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE|304,311,324,420,460,419,340|T|
|Carmen|Arnhart|361136|PEAC|210||ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE,PEAC|304,311,324,420,460,419,340,140|T|
|Carmen|Arnhart|361136|PEAC|100||ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE,PEAC,PEAC|304,311,324,420,460,419,340,140,210|T|
|Carmen|Arnhart|361136|BIBM|492||ACCT,ACCT,ACCT,ACCT,BIBL,BUSA,CORE,PEAC,PEAC,PEAC|304,311,324,420,460,419,340,140,210,100|T|
|Nellie|Livingston|922422|ACCT|302||||T|
|Nellie|Livingston|922422|ACCT|324||ACCT|302|T|
|Nellie|Livingston|922422|ACCT|405|ACCT310|ACCT,ACCT|302,324|F|
|Nellie|Livingston|922422|ACCT|499||ACCT,ACCT|302,324|T|
|Nellie|Livingston|922422|MGMT|331|BUSA120|ACCT,ACCT,ACCT|302,324,499|F|
|Nellie|Livingston|922422|MGMT|432||ACCT,ACCT,ACCT|302,324,499|F|
|Nellie|Livingston|922422|ENGL|326||ACCT,ACCT,ACCT|302,324,499|T|
|Nellie|Livingston|922422|COMS|545||ACCT,ACCT,ACCT,ENGL|302,324,499,326|T|
|Nellie|Livingston|922422|COMS|575||ACCT,ACCT,ACCT,ENGL,COMS|302,324,499,326,545|T|
|Nellie|Livingston|922422|COMS|675||ACCT,ACCT,ACCT,ENGL,COMS,COMS|302,324,499,326,545,575|T|
|Nellie|Livingston|922422|MACC|604||ACCT,ACCT,ACCT,ENGL,COMS,COMS|302,324,499,326,545,575|T|
|Nellie|Livingston|922422|MACC|605||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC|302,324,499,326,545,575,604|T|
|Nellie|Livingston|922422|MACC|610||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC|302,324,499,326,545,575,604,605|T|
|Nellie|Livingston|922422|MACC|611||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC,MACC|302,324,499,326,545,575,604,605,610|T|
|Nellie|Livingston|922422|MACC|622||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC,MACC,MACC|302,324,499,326,545,575,604,605,610,611|T|
|Nellie|Livingston|922422|MACC|619||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC,MACC,MACC,MACC|302,324,499,326,545,575,604,605,610,622|T|
|Nellie|Livingston|922422|BUSA|419||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC,MACC,MACC,MACC,MACC|302,324,499,326,545,575,604,605,610,611,622,619|T|
|Nellie|Livingston|922422|PEAC|216||ACCT,ACCT,ACCT,ENGL,COMS,COMS,MACC,MACC,MACC,MACC,MACC,MACC,BUSA|302,324,499,326,545,575,604,605,610,611,622,619,419|T|
|Joanna|Crase|493562|CS|120||||T|
|Joanna|Crase|493562|CS|130|CS120|CS|120|T|
|Joanna|Crase|493562|CS|301||CS,CS|120,130|T|
|Joanna|Crase|493562|CS|352|CS120,CS130|CS,CS,CS|120,130,301|T|
|Joanna|Crase|493562|CS|356|CS120,CS130,CS220|CS,CS,CS,CS|120,130,301,356|F|
|Joanna|Crase|493562|CS|467|CS120,CS130,CS230|CS,CS,CS,CS|120,130,301,356|F|
|Joanna|Crase|493562|CS|420||CS,CS,CS,CS|120,130,301,356|T|
|Joanna|Crase|493562|CS|474|CS120,CS130,CS230|CS,CS,CS,CS,CS|120,130,301,356,420|F|
|Joanna|Crase|493562|IT|325|CS120,CS130|CS,CS,CS,CS,CS|120,130,301,356,420|T|
|Joanna|Crase|493562|IT|440||CS,CS,CS,CS,CS,IT|120,130,301,356,420,325|T|
|Joanna|Crase|493562|IS|405|BUSA120|CS,CS,CS,CS,CS,IT,IT|120,130,301,356,420,325,440|F|
|Joanna|Crase|493562|MPEI|305||CS,CS,CS,CS,CS,IT,IT|120,130,301,356,420,325,440|T|
|Joanna|Crase|493562|MPEI|412||CS,CS,CS,CS,CS,IT,IT,MPEI|120,130,301,356,420,325,440,305|T|
|Joanna|Crase|493562|ITC|460|CS120,CS130,CS220,CS230|CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI|120,130,301,356,420,325,440,305,412|F|
|Joanna|Crase|493562|ECON|260||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI|120,130,301,356,420,325,440,305,412|T|
|Joanna|Crase|493562|PSYC|120||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI,ECON|120,130,301,356,420,325,440,305,412,260|T|
|Joanna|Crase|493562|MPIN|211||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI,ECON,PSYC|120,130,301,356,420,325,440,305,412,260,120|T|
|Joanna|Crase|493562|MPIN|305||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI,ECON,PSYC,MPIN|120,130,301,356,420,325,440,305,412,260,120,211|T|
|Joanna|Crase|493562|MPIN|315||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI,ECON,PSYC,MPIN,MPIN|120,130,301,356,420,325,440,305,412,260,120,211,305|T|
|Joanna|Crase|493562|MPIN|402||CS,CS,CS,CS,CS,IT,IT,MPEI,MPEI,ECON,PSYC,MPIN,MPIN,MPIN|120,130,301,356,420,325,440,305,412,260,120,211,305,315|T|