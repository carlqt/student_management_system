# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

college_hash = [
  {
    name: "UST",
    country: "Philippines",
    sat_min_score: "4.0",
    sat_max_score: "1.0",
    tuition: "60000"
  },
  {
    name: "College of Engineering",
    country: "Philippines",
    sat_min_score: "4.0",
    sat_max_score: "1.0",
    tuition: "199000"
  },
  {
    name: "Harvard",
    country: "United States",
    sat_min_score: "5.0",
    sat_max_score: "1.0"
    tuition: "400000"
  }
]

college_hash.each do |college|
  College.create name: college[:name], country: college[:country], sat_min_score: college[:sat_min_score], sat_max_score: college[:sat_max_score], tuition: college[:tuition]
end