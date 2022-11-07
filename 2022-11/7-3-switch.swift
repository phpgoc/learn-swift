
let a :Character = "b"

switch a {
case "a","A":
    print("a")
case "b","B":
    print("b")
default:    
    print("other")
}   

func t_tup(tup:(Int,Int)) {
    switch tup {
    case (let o,0), (0,let o):
        print("on the axis, distance from origin: \(o)")
    case (let x,let y):
        print("not on the axis, distance from origin: \(x+y)")

    }
}


t_tup(tup: (1,2))
t_tup(tup: (1,0))

func num2natual(num : Int) -> String{
    switch num {
        case 0:
            return "zero"
            case 1..<12:
            return "a few"
            case 12..<100:
            return "dozens of"
            case 100..<1000:
            return "hundreds of"
            case 1000..<10000:
            return "thousands of"
            default:
            return "a lot of"
    }
}
print(num2natual(num: 1000))
print(num2natual(num: 15))
print(num2natual(num: 0))


func pointAtWhere(point:(Int,Int)) {
    switch point {
        case(0,0):
            print("origin")
    case (let x,let y) where x == y:
        print("on the line x = y")
        case (let x, 0 ):
            print("on the x axis, distance from origin: \(x)")
        case (0, let y):

            print("on the y axis, distance from origin: \(y)")
        case (let x, let y):    
            print("not on the axis, distance from origin: \(x+y)")
    }
}
pointAtWhere(point: (1,1))
pointAtWhere(point: (1,0))
pointAtWhere(point: (0,1))
pointAtWhere(point: (1,2))
pointAtWhere(point: (0,0))