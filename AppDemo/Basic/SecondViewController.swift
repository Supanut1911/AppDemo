//
//  SecondViewController.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 25/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var letter: String?
    var delegate: sendingDataProtocol?
    
    @IBOutlet weak var textFieldView: UITextField!
    
    
    override func viewDidLoad() {
        if let ltr = letter {
           self.textFieldView.text = ltr
        }
    }
    @IBAction func sendBackDidTap(_ sender: UIButton) {
        if let titleBack = textFieldView.text{
             self.delegate?.setTitleBack(messageBack: titleBack)
        }
        dismiss(animated: true, completion: nil)
    }
    
    
}





