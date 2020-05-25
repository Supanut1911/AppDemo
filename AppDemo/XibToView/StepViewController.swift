//
//  StepViewController.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class StepViewController: UIViewController {
    
    let stepperView = Bundle.main.loadNibNamed("Stepper", owner: self, options: nil)?.first as? StepperView
    var viewModel: AddBagViewModel!
    
    @IBOutlet weak var containerStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStepperView()
    }
    
    func setupStepperView() {
        viewModel = AddBagViewModel(title: "ADD TO BAG", stepValue: 0)
        stepperView?.configureX(usingViewModel: viewModel, bagClouse: { (stepValue) in
            print("Current step Value : \(stepValue)")
        })
        self.containerStackView.addArrangedSubview(stepperView!)
    }

   

}
