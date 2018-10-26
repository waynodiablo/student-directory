students = [
 {name: "Dr. Hannibal Lecter", cohort: :november, origin: "Lithuania"},
 {name: "Darth Vader", cohort: :november, origin: "Tattooine"},
 {name: "Nurse Ratched", cohort: :november, origin: "America"},
 {name: "Michael Corleone", cohort: :november, origin: "Sicily"},
 {name: "Alex DeLarge", cohort: :november, origin: "England"},
 {name: "The Wicked Witch of the West", cohort: :november, origin: "Oz"},
 {name: "Terminator", cohort: :november, origin: "SkyNet"},
 {name: "Freddy Kruger", cohort: :november, origin: "America"},
 {name: "The Joker", cohort: :november, origin: "Gotham"},
 {name: "Joffrey Baratheon", cohort: :november, origin: "Kings Landing"},
 {name: "Norman Bates", cohort: :november, origin: "America"}
 ]

def input_students(students)
    puts "Please enter the names of the students, and country of origin"
    puts "To finish, just hit return twice"
    # create an empty array (turned off to allow for pre-populated data)
    #students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array and ask for Origin
      puts "Origin? "
      origin = gets.chomp
      students << {name: name, cohort: :november, origin: origin}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the arary of students
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "--------------------------------"
end

#def print(students)
#    students.each_with_index do |student, index|
#        puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
#    end
#end

# This print method chnaged to a While loop
# Original each() iteration above
def print(students)
    counter = 0
    while counter < students.length do
        puts "#{counter+1}. #{students[counter][:name]} from #{students[counter][:origin]} (#{students[counter][:cohort]} cohort)"
        counter +=1
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

input_students(students)
print_header
print(students)
print_footer(students)
