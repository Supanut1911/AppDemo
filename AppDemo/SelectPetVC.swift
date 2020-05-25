//
//  SelectPetVC.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 20/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit


protocol selectPetDelegate {
    func didChoiceTap(name: String, image: UIImage, color: UIColor)
}

class SelectPetVC: UIViewController {
    
    //adpot protocol
    var delegate: selectPetDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func chooseDogDidTap(_ sender: UIButton) {
        delegate.didChoiceTap(name: "Tony", image: #imageLiteral(resourceName: "1"), color: .brown)
        dismiss(animated: true, completion: nil )
    }
    
    @IBAction func chooseCatDidTap(_ sender: UIButton) {
        delegate.didChoiceTap(name: "Kitty", image: #imageLiteral(resourceName: "2"), color: .magenta)
       dismiss(animated: true, completion: nil )
    }
}
