require_relative('../models/student')
require_relative('../models/house')

House.delete()
Student.delete()

house1 = House.new({
  "house_name" => "Gryffindor",
  "logo_url" => "https://www.hp-lexicon.org/wp-content/uploads/2015/08/shield_01-5B1-5D.jpg"
  })

house2 = House.new({
  "house_name" => "Slytherin",
  "logo_url" => "https://www.hp-lexicon.org/wp-content/uploads/2015/08/shield_sly.jpg"
  })

house3 = House.new({
  "house_name" => "Hufflepuff",
  "logo_url" => "https://peoplekeys.com/wp-content/uploads/2016/05/635902910031426624-1870534855_hufflepuff_crest_by_veddabredda-d3jgz75.png"
  })

house4 = House.new({
  "house_name" => "Ravenclaw",
  "logo_url" => "https://www.hp-lexicon.org/wp-content/uploads/2015/08/shield_rav-200x0-c-default.jpg"
  })


house1.save
house2.save
house3.save
house4.save



student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house_id" => 1,
  "age" => 16
  })

student2 = Student.new({
  "first_name" => "Tom",
  "second_name" => "Riddle",
  "house_id" => 2,
  "age" => 45
  })

student3 = Student.new({
  "first_name" => "Newton",
  "second_name" => "Scamander",
  "house_id" => 3, 
  "age" => 23
  })

student4 = Student.new({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "house_id" => 4,
  "age" => 16
  })

student1.save
student2.save
student3.save
student4.save


