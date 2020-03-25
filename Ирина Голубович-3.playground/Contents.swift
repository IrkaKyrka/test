import UIKit

//MARK: - 1. Попробовать оптимизировать пузырьковую сортировку. Сравнить количество операций сравнения оптимизированной и не оптимизированной программы. Написать функции сортировки, которые возвращают количество операций.
var counter = 0

func bubleSotr(array:[Int]) -> [Int]{
    var tmp = 0
    var array = array
    
    if !array.isEmpty {
        for index in 0..<array.count - 1 {
            for i in 0..<array.count - 1 - index {
                counter += 1
                if array[i] > array[i + 1] {
                    tmp = array[i]
                    array[i] = array[i + 1]
                    array[i + 1] = tmp
                }
            }
        }
    }
    return array
}

print(bubleSotr(array: [6,9,1,3,5,7,10,2,4,8]))
print(counter)

//MARK: - 2. *Реализовать шейкерную сортировку.

var shakeCounter = 0
func shakeSotr(array:[Int]) -> [Int]{
    var left = 0
    var right = array.count - 1
    var tmp = 0
    var array = array

    if !array.isEmpty {
        while left < right {
            for i in left..<right {
                shakeCounter += 1
                if array[i] > array[i + 1] {
                    tmp = array[i]
                    array[i] = array[i + 1]
                    array[i + 1] = tmp
                }
            }
            right -= 1
            
            for i in left..<right {
                shakeCounter += 1
                if array[right - i] < array[right - i - 1] {
                    tmp = array[right - i]
                    array[right - i] = array[right - i - 1]
                    array[right - i - 1] = tmp
                }
            }
            left += 1
        }
    }
    return array
}

print(shakeSotr(array: [6,9,1,3,5,7,10,2,4,8]))
print(shakeCounter)


//MARK: - 3. Реализовать бинарный алгоритм поиска в виде функции, которой передается отсортированный массив. Функция возвращает индекс найденного элемента или -1, если элемент не найден.

func findElement(array:[Int], element: Int) -> (index: Int, element: Int)? {
    var left = 0
    var right = array.count - 1
    var center = left + (right - left)/2
    while left < right && array[center] != element {
        if array[center] < element {
            left = center + 1
        } else {
            right = center - 1
        }
        center = left + (right - left)/2
    }
    if array[center] == element {
        return (index: center, element: array[center])
    } else {
        return nil
    }
}

print(findElement(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], element: 11) ?? -1)
