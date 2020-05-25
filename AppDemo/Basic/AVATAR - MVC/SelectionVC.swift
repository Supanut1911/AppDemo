//
//  SelectionVC.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 25/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SelectionVC: UIViewController {

      var delegate: avatarDelegate?
    
    @IBOutlet weak var nameInputView: UITextField!
    @IBOutlet weak var akaInputView: UITextField!
    @IBOutlet weak var powerView: UITextField!
    @IBOutlet weak var detailView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func saveDidTap(_ sender: Any) {
        self.delegate?.getAvatarInformation(avatarModel: InfomationModel.init(name:self.nameInputView.text ?? "",aka: self.akaInputView.text ?? "",power: self.powerView.text ?? "",detail: self.detailView.text ?? ""))
        
        dismiss(animated: true, completion: nil)
    }
    
}



