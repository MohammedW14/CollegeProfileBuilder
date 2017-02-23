//
//  ViewController.swift
//  CollegeProfileBuilder1
//
//  Created by Student on 2/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myCollegeObject:[CollegeClass] = []

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        myCollegeObject.append(CollegeClass(n: "Northwestern University", l: "Evanston, IL", p: "21000", i:UIImage(named: "NU")!))
        myCollegeObject.append(CollegeClass(n: "Johns Hopkins University", l: "Baltimore, MD", p: "22000", i:UIImage(named: "JHU")!))
        myCollegeObject.append(CollegeClass(n: "University of Illinois at Chicago", l: "Chicago, IL", p: "30000", i:UIImage(named: "UIC")!))
    }

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add a College?", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (nameTextField) in
            nameTextField.placeholder = "Add Name of College..."
        }
        
        alert.addTextField { (locationTextField) in
            locationTextField.placeholder = "Add Location of college..."
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default) { (action) in
            
            let nameTextField = alert.textFields?[0]
            let locationTextField = alert.textFields?[1]
            self.myCollegeObject.append((CollegeClass(n: (nameTextField?.text!)!, l: (locationTextField?.text!)!)))
            self.tableView.reloadData()
        }
        
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCollegeObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = myCollegeObject[indexPath.row].name
        cell.detailTextLabel?.text = myCollegeObject[indexPath.row].location
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete
        {
            myCollegeObject.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as! SecondViewController
        let selectedCollege = tableView.indexPathForSelectedRow?.row
        
        secondView.collegeSecond = myCollegeObject[selectedCollege!]
    }

    
    
}

