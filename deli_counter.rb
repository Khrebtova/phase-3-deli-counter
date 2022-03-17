require 'pry'

katz_deli =[]

def line(katz_deli) 
    if katz_deli.empty? 
       puts "The line is currently empty."
    else
        names_with_numbers = []
        katz_deli.each_with_index {|person, index| names_with_numbers <<( "#{index+1}. #{person}")}
        puts "The line is currently: " + names_with_numbers.join(" ")  
    end
end

def take_a_number(katz_deli, new_person)
    katz_deli << new_person
    puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end    
end


# binding.pry        
# 0