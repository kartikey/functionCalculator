//
//  main.swift
//  functionCalculator
//
//  Created by studentuser on 10/13/15.
//  Copyright © 2015 kartikey. All rights reserved.
//

import Foundation

// Build a calculator
print("Functions Assignment")

func add (var1: Int, var2: Int) -> Int {
    return var1 + var2
}

func sub (var1: Int, var2: Int) -> Int {
    return var1 - var2
}

func mul (var1: Int, var2: Int) -> Int {
    return var1 * var2
}

func div (var1: Int, var2: Int) -> Int {
    return var1 / var2
}


func mathFunc (left: Int, right: Int, operation: (Int, Int) -> Int ) -> Int {
    return operation(left,right)
}
print("Calling add function using mathOperation function --- > mathFunc(5,right: 6,operation: add)")
print(mathFunc(5,right: 6,operation: add))


// Array Fun

func mulArray (arr: [Int]) -> Int {
    var res = 1
    for elements in arr {
        res = res * elements
    }
    return res
}

func addArray (arr: [Int]) -> Int {
    var res = 0
    for elements in arr {
        res = res + elements
    }
    return res
}

func countArray (arr: [Int]) -> Int {
    return arr.count
}

func avgArray (arr: [Int]) -> Int {
    var res = 0
    for elements in arr {
        res = res + elements
    }
    return res/arr.count
}

func mathArrayFunc (arr: [Int], operation: ([Int]) -> Int ) -> Int {
    return operation(arr)
}

print("Calling multiply function for array using math array operation function --- > mathArrayFunc([1,2,3,4,5], operation: mulArray)")
print(mathArrayFunc([1,2,3,4,5], operation: mulArray))


// Points


var point1 = (x : 5,y : 6)
var point2 = (x : 1,y : 2)

func addPoints (point1: (Int,Int), point2: (Int,Int)) -> (Int,Int) {
    return (point1.0+point2.0,point1.1+point2.1)
}

func subPoints (point1: (Int,Int), point2: (Int,Int)) -> (Int,Int) {
    return (point1.0-point2.0,point1.1-point2.1)
}

func mathPointFunc (p1: (Int,Int), p2: (Int,Int), operation: ((Int, Int),(Int, Int)) -> (Int,Int)) -> (Int,Int) {
    return operation(p1,p2)
}


print("Calling add function for tuples using math points operation function --- > mathPointFunc(point1, p2: point2, operation: addPoints)")

print(mathPointFunc(point1, p2: point2, operation: addPoints))



func addPoints (var p1: [String: Int], var p2: [String: Int]) -> [String: Int] {
    
    var dic = Dictionary<String, Int>()

    let d1x = p1["x"];
    let d2x = p2["x"];
    let d1y = p2["y"];
    let d2y = p2["y"];
    
    if d1x == nil || d2x == nil {
        dic["x"] = nil
    }
    else {
        dic["x"] = d1x! + d2x!;
    }

    
    if d1y == nil || d2y == nil {
        dic["y"] = nil
    }
    else {
        dic["y"] = d1y! + d2y!;
    }
   
    return dic
}

func addPoints (var p1: [String: Double], var p2: [String: Double]) -> [String: Double] {
    
    var dic = Dictionary<String, Double>()
    
    let d1x = p1["x"];
    let d2x = p2["x"];
    let d1y = p2["y"];
    let d2y = p2["y"];
    
    if d1x == nil || d2x == nil {
        dic["x"] = nil
    }
    else {
        dic["x"] = d1x! + d2x!;
    }
    
    
    if d1y == nil || d2y == nil {
        dic["y"] = nil
    }
    else {
        dic["y"] = d1y! + d2y!;
    }
    
    return dic
}

func subDicts (var p1: [String: Int], var p2: [String: Int]) -> [String: Int] {
    
    if p1["x"] == nil {
        p1["x"] = 0
    }
    if p2["x"] == nil {
        p2["x"] = 0
    }
    if p1["y"] == nil {
        p1["y"] = 0
    }
    if p2["y"] == nil {
        p2["y"] = 0
    }

    return ["x": p1["x"]!-p2["x"]!, "y": p1["y"]!-p2["y"]!]
}


print("Calling add function for dictionary (handling missing x and double value also )")

var dict1 = [ "y": 2]
var dict2 = ["x": 3, "y": 4]

print(addPoints(dict1,p2: dict2))

var dict3 = ["x": 1.0, "y": 2.0]
var dict4 = ["x": 5.0, "y": 1.0]

print(addPoints(dict3,p2: dict4))