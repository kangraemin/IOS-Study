
//print(skeleton.health)
//skeleton.move()
//skeleton.attack()
//
//let skeleton2 = Enemy()
//let skeleton3 = Enemy()

var skeleton = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton
var skeleton3 = Enemy(health: 100, attackStrength: 10)

skeleton.takeDamage(amount: 10)
print(skeleton.health)
print(skeleton2.health)
print(skeleton3.health)

//let dragon = Dragon()
//dragon.wingSpan = 5
//dragon.attackStrength = 15
//dragon.talk(speech: "My teeth are swords !")
//dragon.move()
//dragon.attack()


