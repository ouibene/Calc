//
//  ViewController.swift
//  Calc
//
//  Created by oui on 1/5/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!
    
    @IBAction func process(_ sender: Any) {
 
        let leftStr = leftField.text!
        let rightStr = rightField.text!
        
        //Type conversion
        let leftNum = Int(leftStr)!
        let rightNum = Int(rightStr)!
        
        //Alert
        let msg = "\(leftNum) + \(rightNum) = \(leftNum + rightNum)"
        let alert = UIAlertController(title: "결과", message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftField.becomeFirstResponder() // <-> resignFirstResponder()
    }

}
