javac -cp "jars/*;." step_definitions/CourseTest.java implementations/GetStudents.java 

java -cp "jars/*;." cucumber.api.cli.Main -p pretty --snippets camelcase -g step_definitions features