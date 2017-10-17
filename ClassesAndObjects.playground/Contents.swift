//: Playground - noun: a place where people can play

class Vehicle
{
    init()
    {
        print("The Vehicle object has been created");
    }
    
    convenience init (text: String)
    {
        self.init(); // this is mandatory
        print("I was called with the convenience initializer!");
    }
    
    var color = "red";
    var maxSpeed = 80;
    
    func description() -> String
    {
        return "A \(self.color) vehicle";
    }
    
    func travel()
    {
        print("Traveling at \(maxSpeed) kph");
    }
    
    
    deinit
    {
        print("I'm going away!");
    }
}

//var redVehicle = Vehicle();
//print("The color of this vehincle is " + redVehicle.color);
//print(redVehicle.description());
//print(redVehicle.travel());
//redVehicle = Vehicle(text: "Hi");
/*
 Returns:
 The Vehicle object has been created
 The color of this vehincle is red
 A red vehicle
 Traveling at 80 kph
 ()
 The Vehicle object has been created
 I was called with the convenience initializer!
 I'm going away!
 */
/*
 Swift has two types of initializers, convenience initializers and designated initializers. A designated initializer sets up everything you need to use that object, often using default settings where necessary. A convenience initializer, as its name implies, makes setting up the instance more convenient by allowing for more information to be included in the initialization. A convenience initializer must call the designated ini‐ tializer as part of its setup.
 In addition to initializers, you can run code when removing an object, in a method called a deinitializer, named deinit. This runs when the retain count of an object drops to zero (see “Memory Management” on page 80) and is called right before the object is removed from memory. 
 */
class Counter
{
    var number: Int = 0;
}
//let myCounter = Counter();
//myCounter.number = 2;
//print(myCounter.number);
/*
 Returns:
 */
class Car: Vehicle
{
    var engineType : String = "V8";
    // Inherited classes can override functions
    override func description() -> String
    {
        let description = super.description();
        return description + ", which is a car";
    }
    
}

class Rectangle
{
    var width: Double = 0.0;
    var height: Double = 0.0;
    var area : Double
    {
        // computed getter
        get
        {
            return width * height;
        }
        // computed setter
        set
        {
            // Assume equal dimensions (i.e., a square) width = sqrt(newValue)
            height = newValue.squareRoot();
        }
        
    }
}
//var rect = Rectangle();
//rect.width = 3.0;
//rect.height = 4.5;
//print(rect.area)
//rect.area = 9;
//print(rect.width)
/*
 Returns:
 13.5
 3.0
 */
class PropertyObserverExample
{
    var number: Int=0
    {
        willSet(newNumber)
        {
            print("About to change to \(newNumber)")
        }
        didSet(oldNumber)
        {
            print("Just changed from \(oldNumber) to \(self.number)!")
        }
    }
    
}

var observer = PropertyObserverExample()
observer.number = 4

