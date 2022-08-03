
Gymbro.destroy_all
Musclegroup.destroy_all
Exercise.destroy_all

g1=Gymbro.create(name: "Chad", weight: 200, height: 6.10)
g2=Gymbro.create(name: "Thad", weight: 180, height: 6.0)
g3=Gymbro.create(name: "Rad", weight: 220, height: 5.2)
g4=Gymbro.create(name: "Lad", weight: 230, height: 5.1)
g5=Gymbro.create(name: "Lad", weight: 230, height: 5.1)
g6=Gymbro.create(name: "Lad", weight: 230, height: 5.1)


m1=Musclegroup.create(musclegroup: "Arms",gymbro: g1)
m2=Musclegroup.create(musclegroup: "Back",gymbro: g2)
m3=Musclegroup.create(musclegroup: "Legs",gymbro: g3)
m4=Musclegroup.create(musclegroup: "Abbs",gymbro: g4)
m5=Musclegroup.create(musclegroup: "Shoulders",gymbro: g5)

e1=Exercise.create(exercise: "Barbell Or EZ-Bar Curl", weight: 0, completed_workout: false, musclegroup: m1,img: "https://www.bodybuilding.com/images/2021/march/standing-barbell-curl-header-830x467.jpg",description: "Grab a pair of dumbbells and let them hang at arm’s length next to your sides.Turn your arms so your palms face forward. Without moving your upper arms, bend your elbows and curl the dumbbells as close to your shoulders as you can.")
e2=Exercise.create(exercise: "STANDING BARBELL CURL", weight: 0, completed_workout: false, musclegroup: m1,img: "https://hips.hearstapps.com/hmg-prod/images/workouts/2017/10/barbellcurl-1509456994.gif?crop=1xw:1xh;center,top&resize=980:*",description: "Grab the barbell with an underhand grip, with your your hands positioned about as wide as your hips. To emphasize the inner portion of the bicep, take a wider grip; to target the outer part of the muscle, bring your hands closer together.Start holding the bar at hip height, then squeeze your core and contract your biceps to curl the bar up to shoulder height.Squeeze your biceps at the top of the movement, then slowly lower the weight back to the starting position, controlling the weight through the eccentric movement.")
e3=Exercise.create(exercise: "CONCENTRATION CURL", weight: 0, completed_workout: false, musclegroup: m1,img: "https://tse4.mm.bing.net/th?id=OIP.Xh1iVxwihtzDvfFW-WwgEAHaE8&pid=Api&P=0",description: "You'll need a single dumbbell and a bench to start.Sit on the bench, spreading your legs.Rest your arm holding the dumbbell on the same side leg, just below the knee, so that the weight hangs down between your legs. Keep your torso upright by stabilizing your off-hand on your thigh.")
e4=Exercise.create(exercise: "EZ-BAR PREACHER CURL", weight: 0, completed_workout: false, musclegroup: m1,img: "https://tse3.mm.bing.net/th?id=OIP.79MbxClDE0s2lPPz9N8YrQHaFj&pid=Api&P=0",description: "Resting your arms on a sloping pad of a preacher bench helps isolate your biceps by taking your other upper-body muscles out of the equation—meaning, they won’t come into play to assist where your biceps are weakest. If you don’t have the appropriate workstation, you can use a Swiss ball or a bench angled to 45 degrees.")
e5=Exercise.create(exercise: "CRUCIFIX CURL", weight: 0, completed_workout: false, musclegroup: m1,img: "https://tse1.mm.bing.net/th?id=OIP._0aw7AZK1yzS9cy_COp1rgHaEK&pid=Api&P=0",description: "Use a cable tower for this technical curl variation, then kneel down to help to isolate the muscle even more for maximum gains. You'll be able to emphasize the contraction—and hone your shoulder and core stability—much more than other versions of the movement.")


e6=Exercise.create(exercise: "Deadlift", weight: 0, completed_workout: false, musclegroup: m2,img: "https://www.bodybuilding.com/images/2021/march/deadlift-header-830x467.jpg",description: "And no, it's not just for powerlifters! Legendary bodybuilder Jay Cutler builds his back day around deadlifts, as well. Technique is uber-important, but once you nail it, you can progress to lifting monster weights that recruit maximum muscle, release muscle-building hormones, and help you get big.")
e7=Exercise.create(exercise: "Bent-Over Row", weight: 0, completed_workout: false, musclegroup: m2,img: "https://www.bodybuilding.com/images/2021/march/bent-over-row-header-830x467.jpg",description: "Do heavy bent-over rows toward the start of your back workout in lower rep ranges, such as 6-8 or 8-10, in order to save your lower back. If you're wrecked from deadlifts, skip it or do it on a second back day later in the week.")
e8=Exercise.create(exercise: "Pull-Up", weight: 0, completed_workout: false, musclegroup: m2,img: "https://www.bodybuilding.com/images/2021/march/pull-up-header-830x467.jpg",description: "if you're a pull-up pro, you can do some light sets as a warm-up. If they're tougher for you, you can treat them more as a strength movement toward the start of your workout. Assisted variations make for great burnouts at the end of a back workout.")
e9=Exercise.create(exercise: "T-Bar Row", weight: 0, completed_workout: false, musclegroup: m2,img: "https://www.bodybuilding.com/images/2021/march/t-bar-row-header-830x467.jpg",description: "You also typically have a choice of hand positions and width. A wider grip will put more emphasis on the lats, while a neutral grip will better target the middle back (rhomboids, teres, and traps).")
e10=Exercise.create(exercise: "Seated Row", weight: 0, completed_workout: false, musclegroup: m2,img: "https://www.bodybuilding.com/images/2021/march/seated-row-header-830x467.jpg",description: "Plus, many gyms have a wide range of handles that you can clip onto a seated cable row with a carabiner, giving you all manner of wide and narrow grips and different hand positions.")

e11=Exercise.create(exercise: "Barbell Back Squat", weight: 0, completed_workout: false, musclegroup: m3,img: "https://www.bodybuilding.com/images/2021/april/barbell-back-squat-legs-header-830x467.jpg",description: "High bar or low bar? That's up to you and your goals. High bar, where the bar rests atop the traps, hits all the leg musculature fairly evenly. Low bar, a favorite of powerlifters, targets the glutes and allows you to lift more weight. Not sure which? Choose the variation that allows you to squat deeper, more comfortably, and without excessively rounding your back.")
e12=Exercise.create(exercise: "Barbell Front Squat", weight: 0, completed_workout: false, musclegroup: m3,img: "https://www.bodybuilding.com/images/2021/april/barbell-front-squat-header-830x467.jpg",description: "Front squats also demand—and build—serious upper back and core strength. Those benefits also apply to variations like dumbbell front squats and goblet squats. Think you're too strong for goblets? Strength coach and physical therapist John Rusin requests that you do half your body weight for 20 reps and reconsider. ")
e13=Exercise.create(exercise: "Olympic Lifts: Snatch And Power Clean", weight: 0, completed_workout: false, musclegroup: m3,img: "https://www.bodybuilding.com/images/2021/april/power-clean-header-830x467.jpg",description: "While the rep ranges for these lifts aren't usually in the golden range for hypertrophy, the large amount of muscle mass used and higher intensities may still increase testosterone release. If you're just learning, there are plenty of progression lifts to help you get to the full lifts.")
e14=Exercise.create(exercise: "Deadlift", weight: 0, completed_workout: false, musclegroup: m3,img: "https://www.bodybuilding.com/images/2021/april/leg-deadlift-header-830x467.jpg",description: "For bodybuilders, the deadlift is commonly trained as part of back day. If you're training it with legs, you probably won't be able to go too heavy—keep the reps moderate, at least 5-8 reps per set, hit them after squats, and stop each set short of failure.")
e15=Exercise.create(exercise: "Split Squat", weight: 0, completed_workout: false, musclegroup: m3,img: "https://www.bodybuilding.com/images/2021/april/split-squat-header-830x467.jpg",description: "Nevertheless, split squats are deceptively difficult, partly because of balance and partly because you're training one side at a time. And when you raise your rear foot in a so-called Bulgarian split squat, everything gets tougher. If balance is holding you back, you can just drop your back foot, hold onto a stable object, or even perform them in the Smith machine.")

e16=Exercise.create(exercise: "Hanging Knee Raise", weight: 0, completed_workout: false, musclegroup: m4,img: "https://www.bodybuilding.com/images/2021/april/hanging-knee-raise-header-830x467.jpg",description: "Another point in their favor: You can increase the degree of difficulty and resistance by holding a medicine ball between your knees or ankles, allowing you to train in a lower rep range. Or you can add a twist at the top or graduate to full-blown windshield wipers to target your deeper rotational muscles and obliques.")
e17=Exercise.create(exercise: "Machine Crunch", weight: 0, completed_workout: false, musclegroup: m4,img: "https://www.bodybuilding.com/images/2021/april/machine-crunch-header-830x467.jpg",description: "By using a machine, you can also adjust the load and train to failure at just about any rep target you want. A pin-loaded machine works especially well when doing dropsets. If your gym doesn't have a dedicated ab machine, you can still get the same benefits using cables or bands.")
e18=Exercise.create(exercise: "Pallof Press", weight: 0, completed_workout: false, musclegroup: m4,img: "https://www.bodybuilding.com/images/2021/april/palloff-press-header-830x467.jpg",description: "There's no need to go heavy here; all it will do is compromise the quality of the move. Do these after your most difficult ab move of the day using a weight that allows you to manage 3 sets of 10-15 reps on each side.")
e19=Exercise.create(exercise: "Cable Crunch", weight: 0, completed_workout: false, musclegroup: m4,img: "https://www.bodybuilding.com/images/2021/april/cable-crunch-header-830x467.jpg",description: "The strength of this exercise is its versatility. It works for any fitness level, on any cable machine, and you can add any amount of resistance you need to train at your target rep range. You can also use a resistance band if you don't have a cable stack handy.")
e20=Exercise.create(exercise: "Decline Crunch", weight: 0, completed_workout: false, musclegroup: m4,img: "https://www.bodybuilding.com/images/2021/april/decline-crunch-header-830x467.jpg",description: "Holding a medicine ball, dumbbell, or plate against your chest adds a further level of customizable resistance. If you want the ab-chiseling upside of cables or gym machines but don't have access to a gym, this is for you.")

e21=Exercise.create(exercise: "Push-Press", weight: 0, completed_workout: false, musclegroup: m5,img: "https://www.bodybuilding.com/images/2021/april/barbell-push-press-header-830x467.jpg",description: "This isn't always a bad thing! Compound movements like this engage a great deal of muscle mass and boost muscle-building hormones better than movements that don't. It's a favorite of bodybuilders who are looking to build strength and athleticism in the offseason, like in Steve Cook's shoulder and arms workout.")
e22=Exercise.create(exercise: "Military Press", weight: 0, completed_workout: false, musclegroup: m5,img: "https://www.bodybuilding.com/images/2021/april/standing-barbell-military-press-header-v2-830x467.jpg",description: "After a thorough warm-up, choose a challenging weight, but not one so heavy that you break form. Classic rep schemes like 5x5 for muscle and strength are great. For more pure size gains, go for sets of 6-8 or 8-10 where the last one is a struggle, but you're in no danger of failing the rep.")
e23=Exercise.create(exercise: "Rear Delt Row", weight: 0, completed_workout: false, musclegroup: m5,img: "https://www.bodybuilding.com/images/2021/april/dumbbell-rear-delt-row-header-830x467.jpg",description: "One more point in favor of rows, particularly on an incline bench: a 2014 study found that in addition to hitting the rear delts as well as flyes, they activated the middle delt significantly better than dumbbell shoulder presses, cable lateral raises, and even barbell upright rows. This makes it a no-brainer for creating a time-efficient shoulder workout.")
e24=Exercise.create(exercise: "Seated Dumbbell Press", weight: 0, completed_workout: false, musclegroup: m5,img: "https://www.bodybuilding.com/images/2021/april/seated-dumbbell-shoulder-press-header-v2-830x467.jpg",description: "Swapping out the barbell for dumbbells on overhead presses works each side independently, which is great for balanced development. The range of motion is also a bit longer, which can help maximize muscle growth. Pressing in a seated position also removes the lower body, allowing you to focus squarely on the shoulders.")
e25=Exercise.create(exercise: "Seated Barbell Press", weight: 0, completed_workout: false, musclegroup: m5,img: "https://www.bodybuilding.com/images/2021/april/seated-barbell-shoulder-press-header-830x467.jpg",description: "Using a barbell rather than dumbbells may seem like a matter of taste, but there are functional reasons to pick the big bar. For one, you can put a bench in a rack and press off of the safety pins, allowing you to dial in your desired range of motion. Doing barbell-style presses on a Smith machine also allows you to safely push a bit closer to failure than other press variations and really focus on performing slow negatives.")