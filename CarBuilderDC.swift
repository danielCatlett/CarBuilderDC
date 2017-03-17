import Foundation

class Car
{
    var transmission: String
    var color: String

    var doorGuard: Bool
    var mudGuard: Bool
    var paintProtect: Bool
    var bumperProtect: Bool
    var weatherMats: Bool
    var cargoNet: Bool
    var emergencyAssist: Bool
    var firstAid: Bool
    var keyFinder: Bool
    var tabletHolder: Bool

    init()
    {
        transmission = "manual"
        color = "black"

        doorGuard = false
        mudGuard = false
        paintProtect = false
        bumperProtect = false
        weatherMats = false
        cargoNet = false
        emergencyAssist = false
        firstAid = false
        keyFinder = false
        tabletHolder = false
    }

    func setTransmission(trans: String)
    {
        transmission = trans
    }

    func setColor(col: String)
    {
        color = col
    }

    func setDoorGuard(door: Bool)
    {
        doorGuard = door
    }

    func setMudGuard(mud: Bool)
    {
        mudGuard = mud
    }

    func setPaintProtect(paint: Bool)
    {
        paintProtect = paint
    }

    func setBumperProtect(bumper: Bool)
    {
        bumperProtect = bumper
    }

    func setWeatherMats(weather: Bool)
    {
        weatherMats = weather
    }

    func setCargoNet(cargo: Bool)
    {
        cargoNet = cargo
    }

    func setEmergencyAssist(emergency: Bool)
    {
        emergencyAssist = emergency
    }

    func setFirstAid(first: Bool)
    {
        firstAid = first
    }

    func setKeyFinder(key: Bool)
    {
        keyFinder = key
    }

    func setTabletHolder(tablet: Bool)
    {
        tabletHolder = tablet
    }

    func getTransmission() -> String
    {
        return transmission
    }

    func getColor() -> String
    {
        return color
    }

    func getDoorGuard() -> Bool
    {
        return doorGuard
    }

    func getMudGuard() -> Bool
    {
        return mudGuard
    }

    func getPaintProtect() -> Bool
    {
        return paintProtect
    }

    func getBumperProtect() -> Bool
    {
        return bumperProtect
    }

    func getWeatherMats() -> Bool
    {
        return weatherMats
    }

    func getCargoNet() -> Bool
    {
        return cargoNet
    }

    func getEmergencyAssist() -> Bool
    {
        return emergencyAssist
    }

    func getFirstAid() -> Bool
    {
        return firstAid
    }

    func getKeyFinder() -> Bool
    {
        return keyFinder
    }

    func getTabletHolder() -> Bool
    {
        return tabletHolder
    }

    func accessoryErrorChecking(input: String) -> String
    {
        if(input == "y" && input == "n")
        {
            return input
        }

        var newInput = input
        while (newInput != "y" && newInput != "n")
        {
            print("You must enter either y or n exactly. This is case sensitive, so please be sure to make sure you type it out in lower case.")
            newInput = readLine()!
        }
        return newInput
    }

    func convertInputToBool(input: String) -> Bool
    {
        if(input == "y")
        {
            return true
        }
        else
        {
            return false
        }
    }
}
let carToBuild = Car()
print("Welcomme to the car builder! Here we will run through all your options when building a car. Let's start with the transmission. Do you want manual, or automatic?")
var stringInput = readLine()
while (stringInput! != "manual" && stringInput! != "automatic")
{
    print("You must enter either manual or automatic exactly. This is case sensitive, so please be sure to make sure you type it out in lower case.")
    stringInput = readLine()
}
carToBuild.setTransmission(trans: stringInput!)

print("Alright, next up is the color. We only have Black or White available at the moment, so which one would you prefer?")
stringInput = readLine()
while (stringInput! != "black" && stringInput! != "white")
{
    print("You must enter either black or white exactly. This is case sensitive, so please be sure to make sure you type it out in lower case.")
    stringInput = readLine()
}
carToBuild.setColor(col: stringInput!)

print("Alright, now we will go over a series of optional accessories, rapid fire.if you want it, enter y. If not, enter n.")

print("Door Edge Guard")
var boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setDoorGuard(door: carToBuild.convertInputToBool(input: boolInput!))

print("Mudguard")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setMudGuard(mud: carToBuild.convertInputToBool(input: boolInput!))

print("Paint Protection Film")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setPaintProtect(paint: carToBuild.convertInputToBool(input: boolInput!))

print("Rear Bumper Protector")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setBumperProtect(bumper: carToBuild.convertInputToBool(input: boolInput!))

print("All Weather Floor Mats")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setWeatherMats(weather: carToBuild.convertInputToBool(input: boolInput!))

print("Cargo Net")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setCargoNet(cargo: carToBuild.convertInputToBool(input: boolInput!))

print("Emergency Assistance Kit")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setEmergencyAssist(emergency: carToBuild.convertInputToBool(input: boolInput!))

print("First Aid Kit")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setFirstAid(first: carToBuild.convertInputToBool(input: boolInput!))

print("Key Finder")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setKeyFinder(key: carToBuild.convertInputToBool(input: boolInput!))

print("Universal Tablet Holder")
boolInput = readLine()
boolInput = carToBuild.accessoryErrorChecking(input: boolInput!)
carToBuild.setTabletHolder(tablet: carToBuild.convertInputToBool(input: boolInput!))
