require_relative('../db/sql_runner')

class House
 
 attr_reader :house_name, :id, :logo_url 

 def initialize(options)
  @house_name = options['house_name']
  @logo_url = options['logo_url']
  @id = options['id'].to_i  if options['id']
 end 

 def save()
   sql = "INSERT INTO houses (house_name, logo_url) VALUES ('#{@house_name}', '#{@logo_url}') RETURNING id;"
   house = SqlRunner.run(sql)
   @id = house[0]['id'].to_i
 end

 def self.all()
   sql = "SELECT * FROM houses;"
   houses = SqlRunner.run(sql)
   return houses.map {|house| House.new(house)}
 end 

 def self.find(id)
  sql = "SELECT * FROM houses WHERE id = #{id}"
  house = SqlRunner.run(sql)
  return House.new(house[0])
 end 

end 