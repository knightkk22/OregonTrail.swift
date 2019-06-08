class OregonTrail {
    // CREATE GAME VARIABLES
    var dollars: Int = 700
    var oxen: Int = 0
    var clothing: Int = 0
    var ammunition: Int = 0
    var misc: Int = 0
    var food: Int = 0
    var mileage: Int = 0

    func buyStuff(item: String) {
        var dollarsSpentOnItem: Int = 0
        print("How much would you like to spend on \(item)?: ", terminator: "")
        let userInput = readLine()
        if userInput != nil {
            if Int(userInput!) != nil { 
                dollarsSpentOnItem = Int(userInput!)!
            } else {
                dollarsSpentOnItem = 200
            }
        } else {
            dollarsSpentOnItem = 200
        }

        dollars = dollars - dollarsSpentOnItem
        
        if item == "oxen" {
            oxen = dollarsSpentOnItem
        } else if item == "clothing" {
            clothing = dollarsSpentOnItem
        } else if item == "ammunition" {
            ammunition = dollarsSpentOnItem
        } else if item == "misc" {
            misc = dollarsSpentOnItem
        } else if item == "food" {
            food = dollarsSpentOnItem
        }

        print("")
    }
}
