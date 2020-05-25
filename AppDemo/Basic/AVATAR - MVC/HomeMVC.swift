//
//  HomeVC.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 25/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class HomeMVC: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var avatarName: UILabel!
    @IBOutlet weak var avatarAKA: UILabel!
    @IBOutlet weak var avatarPower: UILabel!
    @IBOutlet weak var avatarDetailTextView: UITextView!
    
    
    var selectVC =  SelectionVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    //goConfig
    @IBAction func configDidTap(_ sender: Any) {
//         selectVC.delegate = self
//        performSegue(withIdentifier: "goConfig", sender: self)
        let vc = storyboard?.instantiateViewController(identifier: "SelectionVC") as! SelectionVC
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension HomeMVC: avatarDelegate {
    func getAvatarInformation(avatarModel: InfomationModel) {
        self.avatarName.text = avatarModel.name
        self.avatarAKA.text = avatarModel.aka
        self.avatarPower.text = avatarModel.power
        self.avatarDetailTextView.text = avatarModel.detail
    }
    
    
    
}
