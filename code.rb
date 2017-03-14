people =
{
  "Jon Smith" => {
    "age" => 25,
    "income" => 50000,
    "household_size" => 1,
    "gender" => "Male",
    "education" => "College"
  },

  "Jane Davies" => {
    "age" =>30,
    "income" => 60000,
    "household_size" => 3,
    "gender" => "Female",
    "education" => "High School"
  },

  "Sam Farelly" => {
    "age" => 32,
    "income" => 80000,
    "household_size" => 2,
    "gender" => "Unspecified",
    "education" => "College"
  },

  "Joan Favreau" => {
    "age" => 35,
    "income" => 65000,
    "household_size" => 4,
    "gender" => "Female",
    "education" => "College"
  },

  "Sam McNulty" => {
    "age" => 38,
    "income" => 63000,
    "household_size" => 3,
    "gender" => "Male",
    "education" => "College"
  },

  "Mark Minahan" => {
    "age" => 48,
    "income" => 78000,
    "household_size" => 5,
    "gender" => "Male",
    "education" => "High School"
  },

  "Susan Umani" => {
    "age" => 45,
    "income" => 75000,
    "household_size" => 2,
    "gender" => "Female",
    "education" => "College"
  },

  "Bill Perault" => {
    "age" => 24,
    "income" => 45000,
    "household_size" => 1,
    "gender" => "Male",
    "education" => "Did Not Complete High School"
  },

  "Doug Stamper" => {
    "age" => 45,
    "income" => 75000,
    "household_size" => 1,
    "gender" => "Male",
    "education" => "College"
  },

  "Francis Underwood" => {
    "age" => 52,
    "income" => 100000,
    "household_size" => 2,
    "gender" => "Male",
    "education" => "College"
  }

}

# * Average age
average = 0
people.each do |name, info|
    average += info ["age"]
end
average = average / people.length
puts "The average voter age is #{average}."

# * Average income
average_income = 0
people.each do |name, info|
  average_income += info["income"]
end
average_income = average_income / people.length
puts "The average voter income is $#{average_income}."

# * Average household size
average_household = 0
people.each do |name, info|
  average_household += info["household_size"]
end
average_household = average_household / people.length
puts "The average voter household size is #{average_household}."

# * Female Percentage
female = 0
male = 0
unspecified = 0
people.each do |name, info|
  if info["gender"] == "Female"
    female += 1
  elsif info["gender"] == "Male"
    male += 1
  else
    unspecified += 1
  end
end

female_percent = female.to_f/people.length * 100
puts "The percent of voters who are female is % #{female_percent.round}."

# * Male Percentage
male_percent = male.to_f/people.length * 100
puts "The percent of voters who are male is % #{male_percent.round}."

# * Unspecified Gender Percentage
unspecified_percent = unspecified.to_f/people.length * 100
puts "The percent of voters who are unspecified is % #{unspecified_percent.round}."

# * Percent of those who obtained a college education level
college_education = 0
high_school_education = 0
no_diploma = 0
people.each do |name,info|
  if info["education"] == "College"
    college_education += 1
  elsif info["education"] == "High School"
    high_school_education += 1
  else
    no_diploma += 1
  end
end

college_education_percent = college_education.to_f/people.length * 100
puts "The percent of voters who obtained a college level education is % #{college_education_percent.round}."

# * Percent of those who obtained a high school education level
high_school_education_percent = high_school_education.to_f/people.length * 100
puts "The percent of voters who obtained a high school level education is % #{high_school_education_percent.round}."

# * Percent of those that did not finish high school
no_diploma_percent = no_diploma.to_f/people.length * 100
puts "The percent of voters who did not finish high school is % #{no_diploma_percent.round}."
