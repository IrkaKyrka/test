import UIKit

//MARK: - //1. Ввести вес и рост человека. Рассчитать и вывести индекс массы тела по формуле I=m/(h*h); где m-масса тела в килограммах, h - рост в метрах.

let mass = 54.0
let height = 1.73

func getIndex(mass: Double, height: Double) -> Double {
    return mass / (height * height)
}

let index = getIndex(mass: mass, height: height)


//MARK: - 4. Написать программу нахождения корней заданного квадратного уравнения.
let a = 1
let b = 5
let c = 4

func getD(a: Int, b: Int, c: Int) -> Double {
    //b2 - 4ac
    return Double(b * b - 4 * a * c)
}

func getRoots(a: Int, b: Int, c: Int) -> (firstRoot: Double, secondRoot: Double)? {
    
    let desc = getD(a: a, b: b, c: c)
        //D > 0 - уравнение имеет 2 различных вещественных корня;
        //D = 0 - уравнение имеет 1 корень (или же 2 совпадающих вещественных корня):
        //D < 0 - уравнение имеет 2 мнимых корня (т.е. вещественных корней нет).
    if desc > 0 || desc == 0 {
         return (firstRoot: (Double(-b) + sqrt(desc)) / 2.0 * Double(a), secondRoot: (Double(-b) - sqrt(desc)) / 2.0 * Double(a))
    } else {
        print("корней нет")
        return nil
    }
}

let roots = getRoots(a: a, b: b, c: c)


//MARK: - //5. С клавиатуры вводится номер месяца. Требуется определить, к какому времени года он относится.

let month = 5

func getSeason(month: Int) -> String {
    switch month {
    case 1, 2, 12:
        return "Winter"
    case 3, 4, 5:
        return "Spring"
    case 6, 7, 8:
        return "Summer"
    case 9, 10, 11:
        return "Autumn"
    default:
        return "Undefined"
    }
}

let season = getSeason(month: month)


//MARK - 3. Написать программу обмена значениями двух целочисленных переменных:
    //a. с использованием третьей переменной;
    
var numberOne = 1
var numberTwo = 10

let temp = numberTwo
numberTwo = numberOne
numberOne = temp

    //b. *без использования третьей переменной.

var number1 = 1
var number2 = 10

number1 += number2
number2 = number1 - number2
number1 -= number2

print(number1)
print(number2)

//MARK: - 7. С клавиатуры вводятся числовые координаты двух полей шахматной доски (x1,y1,x2,y2). Требуется определить, относятся поля к одному цвету или нет.
let coordinates1 = (x: 2, y: 3)
let coordinates2 = (x: 5, y: 8)

if ((coordinates1.x + coordinates1.y) % 2 == 0 && (coordinates2.x + coordinates2.y) % 2 == 0) ||
    ((coordinates1.x + coordinates1.y) % 2 != 0 && (coordinates2.x + coordinates2.y) % 2 != 0) {
    print("Same color")
} else {
    print("Different color")
}

//MARK: - 8. Ввести a и b и вывести квадраты и кубы чисел от a до b.
let first = 3
let second = 5

for number in first...second {
    print("pow2 \(number): \(number * number)")
    print("pow3 \(number): \(number * number * number)")
}


//MARK: - 9. Даны целые положительные числа N и K. Используя только операции сложения и вычитания, найти частное от деления нацело N на K, а также остаток от этого деления.

var n = 17
let d = 4
var i = 0

while n > d {
    n -= d
    i += 1
}

print("Остаток от деления = \(n)")
print("Частное = \(i)")

