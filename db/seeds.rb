Todo.destroy_all
Todo.create([
  {body: "Clean Kitchen", completed: true},
  {body: "Nap 4 hours", completed: false},
  {body: "Skateboard", completed: false},
  {body: "Draw a picture", completed: true},
  {body: "Eat Dinner", completed: true}
  ])


puts "seeding completed"
