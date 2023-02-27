//
//  dataViewController.swift
//  Assignment2
//
//  Created by promact on 25/02/23.
//

import UIKit

class dataViewController: UIViewController {
//    Creating outlets
    @IBOutlet weak var ansLbl: UILabel!
//    creating String for store values
    var ans:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ansLbl.text = ans
//        hiding keyboard
        hideKeyboard()
    }
    
//button to regenerate valus
    
    @IBAction func reGenerateBtn(_ sender: UIButton) {
//        dismiss this screen
        self.dismiss(animated: true)
    }
    

}
