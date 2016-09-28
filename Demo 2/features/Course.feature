Feature: Take courses and student names
	Scenario Outline: An advisor wants to know how many classes a student has taken in total
		Given a professor wants to find a student <first> <last> and the total number of classes he has taken
		Then the number of classes <total>

Examples:
|first      | last 		    | total  |
|"Bernard"  | "Duffy"       |  18 	 |
|"Carmen"   | "Arnhart"     |  18 	 |
|"Nellie"   | "Livingston"  |  20	 |
|"Allen"    | "Holmes"      |  24 	 |
|"Martha"   | "Davis"       |  25 	 |
|"Kip"      | "Harrison"    |  30 	 |
|"Daniel"   | "Dodson"      |  20 	 |
|"Charlotte"| "Davidson"    |  23 	 |
|"Bernard"  | "Duffy"       |  18 	 |
|"Carmen"   | "Arnhart"     |  18 	 |
|"Nellie"   | "Livingston"  |  20	 |
|"Allen"    | "Holmes"      |  24 	 |
|"Martha"   | "Davis"       |  25 	 |
|"Kip"      | "Harrison"    |  30 	 |
|"Daniel"   | "Dodson"      |  20 	 |
|"Charlotte"| "Davidson"    |  23 	 |
|"Bernard"  | "Duffy"       |  18 	 |
|"Carmen"   | "Arnhart"     |  18 	 |
|"Nellie"   | "Livingston"  |  20	 |
|"Allen"    | "Holmes"      |  24 	 |
|"Martha"   | "Davis"       |  25 	 |
|"Kip"      | "Harrison"    |  30 	 |
|"Daniel"   | "Dodson"      |  20 	 |
|"Charlotte"| "Davidson"    |  23 	 |
|"Bernard"  | "Duffy"       |  18 	 |
|"Carmen"   | "Arnhart"     |  18 	 |
|"Nellie"   | "Livingston"  |  20	 |
|"Allen"    | "Holmes"      |  24 	 |
|"Martha"   | "Davis"       |  25 	 |
|"Kip"      | "Harrison"    |  30 	 |
|"Daniel"   | "Dodson"      |  20 	 |
|"Charlotte"| "Davidson"    |  23 	 |

