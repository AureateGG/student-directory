
students1 =[
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :november}, 
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november}, 
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
    {name: "Norman Bates", cohort: :november}]


cohorts = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october",
"november", "december"]   
def input_students
    puts "Please enter the names and the cohort of the students"
    puts "To finish, type done"
    students = []
    input = gets.chomp
    
    while input != "done" do
        split = input.split(" ")
        name = split.shift
        cohort = split.join.to_sym
        students << {name: name, cohort: cohort, country: :UK}
        puts "Now we have #{students.count} students"
        input = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "______________"
end 

def print(students)
    students.each_with_index do |student, index|
        if student[:name].length < 12 && student[:name][0,1] == "T"
        puts "#{index + 1}. #{student[:name].center(12,"-")} (#{student[:cohort]} cohort) #{student[:country]}"
        end
    end
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)

