require_relative('../db/sql_runner')
require_relative('./house')

class Student 

attr_reader :first_name, :second_name, :house_id, :age

  def initialize( options )
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id']
    @age = options['age'].to_i
    @id = options['id'].to_i if options['id']
  end 

  def save()
    sql = "INSERT INTO students (first_name, second_name, house_id, age) VALUES ('#{@first_name}', '#{@second_name}', #{@house_id}, #{@age} ) RETURNING id;"
    student = SqlRunner.run(sql)
    @id = student[0]['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    student = SqlRunner.run(sql)
    return Student.new(student.first)
  end 

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run(sql)
    return students.map {|student| Student.new(student)}
  end 

def find_house()
   # sql = "SELECT * FROM houses WHERE id = #{@house_id};"
   # house = SqlRunner.run(sql)
   # return House.new(house[0])

   return House.find(@house_id)
end 

def self.delete()
 sql = "DELETE FROM students;"
 return SqlRunner.run(sql)
end 

end 
