
//name the repo: FirstName_Swift_Assignment_3
//Create a super class named Ship
//Create a subclass named CruiseShip
//Create a subclass named CargoShip
//Create a subclass named PirateShip
//the classes should have the following details:
//Ship (superclass)
//name
//year
//countryOfOrigin
//add an appropriate initializer
//CruiseShip (subclass)
//maxCapacity
//oceanOfOperation
//currentPassengerCount
//add a method to add a passenger if the ship is not at max capacity
//add a method to print the current passenger count
//CargoShip (subclass)
//maxCargoCapacity
//currentCargoCount
//isInternational
//add a method to add cargo if the ship is not at max capacity
//add a method to print the current cargo count
//PirateShip (subclass)
//maxTreasureCapacity
//currentTreasureCount
//numberOfCannons
//add a method to add treasure if the ship is not at max capacity
//add a method to print the current treasure count
//Create an instance of 1 of the subclasses and using print statements, demonstrate the use of ALL the properties and methods of that class as well as the superclass 🛠 you can do this anyway you like, but all props and methods must be demonstrated 👍
//note: when you are adding passengers, cargo, or treasure, you should NOT be able to add more than the max capacity, but the property should not exceed the max capacity 📦 and just work with a quantity of 1 (as in add 1 passenger, 1 cargo, 1 treasure) to make it simple. So just like the vehicle service sample you will need to find a way to see if the passenger, cargo, or treasure count is at max capacity and if it is, do not add the passenger, cargo, or treasure 🤔
//

// super class
class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    //add an appropriate initializer
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
//creating a function
    func printDetails() -> Void {
        print("Ship name: \(self.name)")
        print("Year built: \(self.year)")
        print("Country of origin: \(self.countryOfOrigin)")
    }
}
//add a method to add a passenger if the ship is not at max capacity
//add a method to print the current passenger count
// subclass #1
class CruiseShip : Ship {
    let maxCapacity: Int = 30
    let oceanOfOperation: String = "someOcean"
    var currentPassengerCount: Int = 13
    var passengers: [String] = []

    init() {
        super.init(name: "Ocean King", year: 2024, countryOfOrigin: "USA")
    }
    
    func addPassenger(_ name: String) {
        if currentPassengerCount < maxCapacity {
            passengers.append(name)
            currentPassengerCount += 1
            print("\(name) has been added as a passenger.")
        } else {
            print("Sorry, the ship is at max capacity. \(name) cannot be added.")
        }
    }

    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}

// Create an instance of CruiseShip
let cruiseShip = CruiseShip()

//superclass properties and method
cruiseShip.printDetails()

// subclass properties and methods
cruiseShip.addPassenger("John") // Add a passenger
cruiseShip.printPassengerCount() // Print passenger count

//add a method to add cargo if the ship is not at max capacity
//add a method to print the current cargo count

// subclass #2
class CargoShip : Ship {
    let maxCargoCapacity: Int = 50
    var currentCargoCount: Int = 75
    let isInternational: Bool = (false)
    var cargoShip: [String] = []
    
    init() {
        super.init(name: "name", year: 0, countryOfOrigin: "countryOfOrigin")
    }
    func addCargo(_ cargo: String) {
        if currentCargoCount < maxCargoCapacity {
            cargoShip.append(cargo)
            currentCargoCount += 1
            print("\(cargo) has been added as cargo")
        } else {
            print("Sorry, the ship is at max capacity. \(cargo) cannot be added.")
        }
    }
    
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}
    // Create an instance of CargoShip
    let cargoShip = CargoShip()
    cargoShip.addCargo("Cargo") // Add cargo
    cargoShip.printCargoCount() // Print cargo count
    
    //add a method to add treasure if the ship is not at max capacity
    //add a method to print the current treasure count
    // subclass #3
    class PirateShip : Ship {
        let maxTreasureCapacity: Int = 75
        var currentTreasureCount: Int = 100
        let numberOfCannons: Int = 9
        var passengers: [String] = []
        
        init() {
            super.init(name: "name", year: 0, countryOfOrigin: "countryOfOrigin")
        }
        func addPassenger(_ name: String) {
            if currentTreasureCount < maxTreasureCapacity{
                passengers.append(name)
                currentTreasureCount += 1
                print("\(name) has been added as a treasure.")
            } else {
                print("Sorry, the ship is at max capacity. Treasure cannot be added.")
            }
        }
        
        func printPassengerCount() {
            print("Current treasure count: \(currentTreasureCount)")
        }
    }

// Create an instance of PirateShip
let pirateShip = PirateShip()
pirateShip.addPassenger("Jack") // Add a passenger (treasure)
pirateShip.printPassengerCount() // Print treasure count
