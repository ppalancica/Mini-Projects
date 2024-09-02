//
//  Sort.swift
//  Swift-Data-Structures-and-Algorithms
//
//  Created by Pavel Palancica on 02.09.2024.
//

import Foundation

final class Sort {
    static func bubbleSort(a: [Int]) -> [Int] {
        var array = a
        let n = array.count
        var swappedAtLeastOnce: Bool
        
        for _ in 0..<n {
            swappedAtLeastOnce = false
            
            for j in 0..<n - 1 {
                if array[j] > array[j + 1] {
                    let temp = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = temp
                    swappedAtLeastOnce = true
                }
            }
            
            if !swappedAtLeastOnce { break }
        }

        return array
    }
}

final class SortTests {
    static func testBubbleSort() {
        print("Enter number of elements in array, n:")
        let n = Int(readLine()!)!
        
        print("Enter \(n) integer numbers (separated by a space):")
        let array = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        let sortedArray = Sort.bubbleSort(a: array)
        print(sortedArray)
    }
}
