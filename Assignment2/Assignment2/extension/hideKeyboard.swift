//
//  hideKeyboard.swift
//  Assignment2
//
//  Created by promact on 25/02/23.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyboard() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        tap.cancelsTouchesInView = true
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
    
