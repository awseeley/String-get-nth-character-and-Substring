//
//  ViewController.swift
//  StringGetXChar
//
//  Created by Andrew on 14/04/2016.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str = "Seemu Apps"
        
        // 1
        // Get a character at X position (index)
        let index = str.characters.index(str.startIndex, offsetBy: 4)
        let startChar = str[index] // returns Character 'u'
        print(startChar)
        
        // 2
        // Get a character at X position (index) starting from the end of the string
        let endIndex = str.characters.index(str.endIndex, offsetBy: -2) // Goes to the end of the string and back to characters
        let endChar = str[endIndex] // returns Character "p"
        print(endChar)
        
        // 3
        // Get the substring, starting from index and ending at endIndex
        let subString = str[(index ..< endIndex)]
        print(subString) // returns "u Ap"
        
        // 4 & 5
        // Get the substring starting from Index until the End of the String
        let indexToEnd = str.substring(from: index)
        // Get the substring starting frmo the Start of the String to the Index
        let startToIndex = str.substring(to: index)
        print(indexToEnd) // returns String "u Apps"
        print(startToIndex) // returns String "Seem"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

