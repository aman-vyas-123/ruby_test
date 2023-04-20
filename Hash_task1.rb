#Here is the raw data regarding buyers and sellers:

require 'date'

$data = [
 {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
 {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'}, 
 {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
 {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'}, 
]


# Scenario: Write method to get the full name of buyer/seller 

def full_name
  $data.each do |person|
    puts "Full_name is => #{person[:first_name]} #{person[:last_name]}"
  end
end

full_name


# Scenario: Write method to find the age of buyer/seller on the basis of his date_of_birth

def age
  $data.each do |person|
    date = person[:date_of_birth].delete(' ')
    puts Time.now.year - Date::strptime(date,"%d-%m-%Y").year  
  end  
end  

age


# Scenario: Find all the users, whose first name is 'alex'

def alex
  $data.each do |person|
    return "Full_name is => #{person[:first_name]} #{person[:last_name]}" if person[:first_name] == "alex"
  end
end

alex






  

