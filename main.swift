import Foundation

// CREATE MAIN GAME OBJECT
var oregonTrail = OregonTrail()
var gameOver: Bool = false
var userInput: String?

// GAME INTRO
print("Welcome to Oregon Trail!")
print("")
print("Your goal is to make it to Oregon without dying.")
print("You have saved $900 to spend for the trip, and you have just paid $200 for a wagon.")
print("To make it to Oregon, you will need to spend the rest of your money on the following items.")
print("")

// PURCHASE SUPPLIES
oregonTrail.buyStuff(item: "oxen")
oregonTrail.buyStuff(item: "clothing")
oregonTrail.buyStuff(item: "ammunition")
oregonTrail.buyStuff(item: "misc")
oregonTrail.buyStuff(item: "food")

// MAIN GAME LOOP
while gameOver == false {
    print("Miles Traveled: \(oregonTrail.mileage)")
    print("Food Left: \(oregonTrail.food)")
    print("Money Left: \(oregonTrail.dollars)")

    // KRISHI, PROMPT THE USER TO CONTINUE (WE WILL WRITE THE HUNT PART NEXT WEEK)
    print("Enter 'c' to continue, 'h' to hunt: ")
    userInput = readLine()
    if userInput != nil {
        if userInput! == "c" {
            print("Continuing down the trail...")
        } else if userInput! == "h" {
            print("Sorry brah, haven't programmed that part yet...")
        }
    } else {
        print("ERROR: PC LOAD LETTER")
    }
    
    // REDUCE FOOD
    oregonTrail.food = oregonTrail.food - 1

    // KRISHI, INCREASE MILES TRAVELLED FOR THE WIN!!!!!
    oregonTrail.mileage = oregonTrail.mileage + 50

    // DIE
    if oregonTrail.food <= 0 {
        print("You ran out of food and starved to death. RIP")
        gameOver = true
    }

    // END GAME
    if oregonTrail.mileage >= 2000 {
        print("You've arrived. Welcome to Oregon!")
        gameOver = true
    }
    
}
