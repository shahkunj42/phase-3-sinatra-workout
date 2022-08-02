
Gymbro.destroy_all
Musclegroup.destroy_all
Exercise.destroy_all

g1=Gymbro.create(name: "Chad", weight: 200, height: 6.10)
g2=Gymbro.create(name: "Thad", weight: 180, height: 6.0)
g3=Gymbro.create(name: "Rad", weight: 220, height: 5.2)
g4=Gymbro.create(name: "Lad", weight: 230, height: 5.1)

m1=Musclegroup.create(musclegroup: "arms", gymbro: g1)
m2=Musclegroup.create(musclegroup: "legs",gymbro: g1)
m3=Musclegroup.create(musclegroup: "chest",gymbro: g2)
m4=Musclegroup.create(musclegroup: "lowerbody",gymbro: g3)

e1=Exercise.create(exercise: "pushup", weight: 0, completed_workout: false, musclegroup: m1)
e2=Exercise.create(exercise: "pullup", weight: 0, completed_workout: false, musclegroup: m1)
e3=Exercise.create(exercise: "squat", weight: 0, completed_workout: false, musclegroup: m2)
e4=Exercise.create(exercise: "legpress", weight: 0, completed_workout: false, musclegroup: m2)

