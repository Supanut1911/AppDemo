//
//  FirstViewController.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 25/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController: UIViewController{
    
    @IBOutlet weak var textFieldView: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func sendDidTap(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        vc.letter = textFieldView.text
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
    }
}

extension FirstViewController: sendingDataProtocol {
    func setTitleBack(messageBack: String) {
        self.textFieldView.text = messageBack
    }
}
