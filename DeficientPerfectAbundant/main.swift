//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation


// A way of extracting the input once it has been validified
var givenInt = 0

// infinite loop (technically)
while 1 == 1 {
    
    // Checks for nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // checks if input is a number
    guard let intInput = Int(givenInput) else {
        continue
    }
    
    // checks if the number input is in the correct range
    if intInput < 1 || intInput > 32500 {
        continue
    }
    
    // if the loop gets this far the input is put into a variable and the loop breaks (stops)
    givenInt = intInput
    break
}

// if the intput is one the output is debatable so the output is deficient
if givenInt == 1 {
    print("\(givenInt) is a deficient number")
    exit(9)
}


// variable to keep track off the sum of proper divisors
var properDivisorTotal = 0

// goes through all the numbers form 1 up to the given Int to find all the proper divisors
for i in 1...givenInt - 1 {
    
    if givenInt % i == 0 {
        properDivisorTotal += i
    }
}


// comparing the total of the divisors to the number to determine what kind of number it is.

if properDivisorTotal < givenInt {
    print("\(givenInt) is a deficient number")
} else if properDivisorTotal > givenInt {
    print("\(givenInt) is an abundant number")
} else if properDivisorTotal == givenInt {
    print("\(givenInt) is a perfect number")
}
















