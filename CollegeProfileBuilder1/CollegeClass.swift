//
//  CollegeClass.swift
//  CollegeProfileBuilder1
//
//  Created by Student on 2/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class CollegeClass: NSObject {
    
    var name = ""
    var location = ""
    var population = ""
    var image = UIImage(named: "default")
    
    init(n: String, l: String, p: String, i: UIImage)
    {
        name = n
        location = l
        population = p
        image = i
    }
    
    init(n: String, l:String)
    {
        name = n
        location = l
    }


}
