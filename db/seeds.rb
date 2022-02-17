# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

todos = [
  {task: "Grocery Shopping", is_completed: false},
  {task: "Take garbage out", is_completed: true},
  {task: "Help kids with homework", is_completed: false},
  {task: "Apply for developer jobs", is_completed: true},
  {task: "Go to work", is_completed: false}
]


todos.each do |todo|
  Todo.create!(todo)
end