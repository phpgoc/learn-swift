class Vector2D{
    var x,y: Double
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}

infix operator + : AdditionPrecedence

extension  Vector2D{
    static func + (left: Vector2D, right: Vector2D) -> Vector2D{
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}
    
infix operator +-: AdditionPrecedence
extension Vector2D{
    static func +- (left: Vector2D, right: Vector2D) -> Vector2D{
        return Vector2D(x: left.x + right.x, y: left.y - right.y)
    }
}

infix operator *^ : MyPrecedence
precedencegroup MyPrecedence{
    associativity: left
    // higherThan: AdditionPrecedence
    lowerThan: AdditionPrecedence

}
extension Vector2D{
    static func *^ (left: Vector2D, right: Vector2D) -> Vector2D{
        
        return Vector2D(x: left.x * right.x, y: left.y * right.y)
    }
}

prefix operator +++
extension Vector2D{
    static prefix func +++ (vector: inout Vector2D) -> Vector2D{
       vector = vector + vector
        return vector
    }
}

postfix operator +++
extension Vector2D{
    static postfix func +++ (vector: inout Vector2D) -> Vector2D{
        vector = vector + vector + vector
        return vector
    }
}

var firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let thirdVector = firstVector + secondVector   
print("x: \(thirdVector.x), y: \(thirdVector.y)")
let fourthVector = firstVector +- secondVector *^ thirdVector
print("x: \(fourthVector.x), y: \(fourthVector.y)")
var fifthVector = +++firstVector
print("x: \(fifthVector.x), y: \(fifthVector.y)")
print("x: \(firstVector.x), y: \(firstVector.y)")

var sixthVector = firstVector+++
print("x: \(sixthVector.x), y: \(sixthVector.y)")