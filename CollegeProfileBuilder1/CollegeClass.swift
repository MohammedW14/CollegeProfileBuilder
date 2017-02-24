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
    var website = ""
    
    init(n: String, l: String, p: String, i: UIImage, w: String)
    {
        name = n
        location = l
        population = p
        image = i
        website = w
    }
    
    init(n: String, l:String, w: String)
    {
        name = n
        location = l
        website = w
    }


}
