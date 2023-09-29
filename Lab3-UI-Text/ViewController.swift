//
//  ViewController.swift
//  Lab3-UI-Text
//
//  Created by user234887 on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    var firstname = ""
    var lastname = ""
    var country = ""
    var age = ""
    
    
    
    @IBOutlet weak var firstName: UITextField!
    

    @IBOutlet weak var lastName: UITextField!
    
    
    @IBOutlet weak var countryName: UITextField!
    
   
    @IBOutlet weak var ageValue: UITextField!
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBOutlet weak var message: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Add(_ sender: UIButton) {
        firstname = firstName.text ?? ""
        lastname = lastName.text ?? ""
        country = countryName.text ?? ""
        age = ageValue.text ?? ""
        
        displayMessage(btn: "add")
        textView.text = "Full Name: \(firstname) \(lastname) \nCountry: \(country) \nAge: \(age)"
        
    }
    
    
    @IBAction func Submit(_ sender: UIButton) {
        displayMessage(btn: "submit")
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        
        lastName.text = ""
        countryName.text = ""
        ageValue.text = ""
        message.text = ""
        textView.text = ""
        firstName.text = ""
        
    }
    
    func displayMessage(btn: String){
        if btn == "add"{
            if firstname == "" || lastname == "" || country == "" || age == ""{
                message.text = "Complete Missing Info"
            }
        }
        if btn == "submit"{
            if firstname == "" || lastname == "" || country == "" || age == ""{
                message.text = "Complete Missing Info"
            }else{
                message.text = "Successfully submitted!"
            }
            
        }
    }
    
}


