//
//  SecondViewController.swift
//  CollegeProfileBuilder1
//
//  Created by Student on 2/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    var collegeSecond:CollegeClass!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = collegeSecond.image
        nameTextField.text = collegeSecond.name
        locationTextField.text = collegeSecond.location
        populationTextField.text = collegeSecond.population
    }

    @IBAction func goBack(_ sender: Any) {
        
        collegeSecond.name = nameTextField.text!
        collegeSecond.location = locationTextField.text!
        collegeSecond.population = populationTextField.text!
        
        
    }
    
    
    
}
