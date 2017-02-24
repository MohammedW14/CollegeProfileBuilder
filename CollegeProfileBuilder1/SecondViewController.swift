//
//  SecondViewController.swift
//  CollegeProfileBuilder1
//
//  Created by Student on 2/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit
import SafariServices

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    
    var collegeSecond:CollegeClass!
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imageView.image = collegeSecond.image
        nameTextField.text = collegeSecond.name
        locationTextField.text = collegeSecond.location
        populationTextField.text = collegeSecond.population
        websiteTextField.text = collegeSecond.website
    }

    @IBAction func goBack(_ sender: Any) {
        
        collegeSecond.name = nameTextField.text!
        collegeSecond.location = locationTextField.text!
        collegeSecond.population = populationTextField.text!
        collegeSecond.website = websiteTextField.text!
    }
    
    @IBAction func goToWebsite(_ sender: Any) {
        
        let urlString = URL(string: websiteTextField.text!)
        
        UIApplication.shared.openURL(urlString!)
    }
    
    @IBAction func photoButtonTapped(_ sender: Any) {
        
        getPhotoLibrary()
    }
    
    
    func getPhotoLibrary()
    {
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imagePicker.dismiss(animated: true)
        {
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            
            self.imageView.image = selectedImage
        }
}

}
