import UIKit

//MARK: - 1. Реализовать функцию перевода из десятичной системы в двоичную, используя рекурсию.

func transform(number: Int) -> String {
    if number == 1 {
        return String(number)
    }
    return transform(number: Int(floor(Double(number) / 2.0))) + String(number % 2)
}

transform(number: 10)


//MARK: - 2. Реализовать функцию возведения числа a в степень b:
    //a. без рекурсии;

func escalate(number: Int, level: Int) -> Int {
    var temp = 1
    for _ in 1...level {
        temp *= number
    }
    return temp
}

let result = escalate(number: 3, level: 3)

    //b. рекурсивно;

func escalateTwo(number: Int, level: Int) -> Int {
    if level == 0 {
        return 1
    }

    return number * escalateTwo(number: number, level: level - 1)
}

escalateTwo(number: 2, level: 32)

    //c. *рекурсивно, используя свойство четности степени.
    
func escalateFast(number: Int, level: Int) -> Int {
    if level == 1 {
        return number
    }
    if level % 2 == 0 {
        let temp = escalateFast(number: number, level: level/2)
        return temp * temp
    }

    return number * escalateFast(number: number, level: level - 1)
}

escalateFast(number: 2, level: 32)
