//
//  ViewController.swift
//  Assignment2
//
//  Created by promact on 25/02/23.
//

import UIKit

class ViewController: UIViewController {
    
//    create Outlets for both UITextField
    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Call Extension for hide keyboard
        hideKeyboard()
        
//        Delegates for both UITextField
        
        input1.delegate = self
        
        input2.delegate = self
        
    }
    
   
    
//Save Button in Action

    @IBAction func saveBtn(_ sender: UIButton) {
        
//        Code to get values from UITextFild and pass to Another VC
        
        
        let dataViewController:dataViewController = self.storyboard?.instantiateViewController(withIdentifier: "dataViewController") as! dataViewController
        
//        Changing Type of value - String to Int(TypeConversion)
        
        let Ftext: Int64? = Int64(input1.text!)
        let Stext: Int64? = Int64(input2.text!)
        let ans = Int64(Ftext!) * Int64(Stext!)
        
//        Converting Int to String for output
        let convertedText = String(ans)
        
        dataViewController.ans = convertedText
        
//        present dataViewController
        
        self.present(dataViewController, animated: true)
        
    }
    
    
}

// code to block alphabets char.
//only use number keys

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        let allowedCharacters = "1234567890"
        let allowedCharcterSet = CharacterSet(charactersIn: allowedCharacters)
        let typedCharcterSet = CharacterSet(charactersIn: string)
        return allowedCharcterSet.isSuperset(of: typedCharcterSet)
    }
}



