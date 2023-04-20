class Data
  attr_accessor :array
  def initialize
    @array = []
  end
end

class Employee_data < Data
  
  def create_data(name,age,email,designation,salary)
    hash = {e_name:name,e_age:age,e_email:email,e_designation:designation,
    e_salary:salary}
    @array.push(hash)
    puts @array
  end  

  def read_data(index_position)
    puts @array[index_position]
  end  

  def update_data(index_of_hash,key,value)
    @array[index_of_hash][key]= value
    puts @array
  end  

  def deleting_data(email_id)
    email = @array.find{|hs| hs[:e_email]== email_id}
    index_num = @array.index(email)
    @array.delete_at(index_num)
  end  
      
end

obj = Employee_data.new

obj.create_data('Aman',24,'aman03vyas@gmail.com','trainee',100000)
obj.create_data('raju',24,'raju45vyas@gmail.com','trainee',100000)
obj.create_data('meena',26,'meena65vyas@gmail.com','trainee',200000)
puts(" ")

obj.read_data(1)

obj.update_data(1,:e_age,30)

obj.deleting_data('meena65vyas@gmail.com')



