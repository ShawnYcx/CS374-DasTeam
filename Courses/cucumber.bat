javac -cp "jars/*;." step_definitions/CourseTest.java implementation/getStudents.java 
                   
java -cp "jars/*;." cucumber.api.cli.Main -p pretty --snippets camelcase -g step_definitions features