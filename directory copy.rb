
students1 =[
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :september},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :may}, 
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november}, 
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :may},
    {name: "The Joker", cohort: :may},
    {name: "Joffrey Baratheon", cohort: :may},
    {name: "Norman Bates", cohort: :november}]


$months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october,
:november, :december]   
def input_students
    puts "Please enter the names and the cohort of the students"
    puts "To finish, type done"
    students = []
    input = gets.chomp
    
    while input != "done" do
        split = input.split(" ")
        name = split.shift
        cohort = split.join.to_sym
        if $months.include?(cohort)
          students << {name: name, cohort: cohort, country: :UK}
          puts "Now we have #{students.count} students"
        else 
        puts "spelling mistake try again"
        end       
        input = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "______________"
end 

def print_new(students)
    by_cohort = {}
    students.each do |x|
      category = x[:cohort]
    
      if by_cohort[category] == nil
        by_cohort[category] = []
      end
    
      by_cohort[category].push(x[:name])
    end
    by_cohort.each do |name|
        puts name
        puts "____________"
    end
end


def print_old(students)
    students.each_with_index do |student, index|
        if student[:name].length < 12 && student[:name][0,1] == "T"
        puts "#{index + 1}. #{student[:name].center(12,"-")} (#{student[:cohort]} cohort) #{student[:country]}"
        end
    end
end

def print_footer(names)
    if names.count == 1
        puts "We have 1 student"
    else    
        puts "Overall, we have #{names.count} great students"
    end
end


students = input_students
print_header
print_new(students)
print_footer(students)

