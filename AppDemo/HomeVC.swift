//
//  ViewController.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 20/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var dogCatImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func chooseDidTap(_ sender: UIButton) {
        //set segue
        var selectpet = storyboard?.instantiateViewController(identifier: "SelectPetVC") as! SelectPetVC
        selectpet.delegate = self
        present(selectpet, animated: true, completion: nil)
    }
}

extension HomeVC: selectPetDelegate {
    func didChoiceTap(name: String, image: UIImage, color: UIColor) {
        self.dogCatImageView.image = image
        self.nameLabel.text = name
        view.backgroundColor = color
    }
    
    
}
