//
//  Stepper.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class StepperView: UIView {

    var viewModel: AddBagViewModel! {
        didSet {
            let isHidden = (viewModel.stepValue > 0)
            addButton.isHidden = isHidden
            minusButton.isHidden = !isHidden
            plusButton.isHidden = !isHidden
            stepperLabel.isHidden = !isHidden
            stepperLabel.text = "\(viewModel.stepValue)"
            
        }
    }
    
    var closure: BagClosure?
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    

    @IBAction func addToCartDidTap(_ sender: Any) {
        self.viewModel = self.viewModel.onAddToBag()
        self.closure?(self.viewModel.stepValue)
    }
    
    @IBAction func decrementDidTap(_ sender: Any) {
        self.viewModel = self.viewModel.onDecrement()
        self.closure?(self.viewModel.stepValue)
    }
    @IBAction func incrementDidTap(_ sender: Any) {
        self.viewModel = self.viewModel.onIncrement()
        self.closure?(self.viewModel.stepValue)
    }
    
    typealias BagClosure = (Int) -> ()
    func configureX(usingViewModel viewModel: AddBagViewModel, bagClouse: @escaping (Int) -> () ) -> Void {
        self.viewModel = viewModel
        self.addButton.setTitle(viewModel.title, for: .normal)
        self.closure = bagClouse
    }
    
}


struct AddBagViewModel {
    var title: String
    var stepValue: Int
    var showStepper: Bool
    
    init(title: String, stepValue: Int) {
        self.title = title
        self.stepValue = stepValue
        self.showStepper = stepValue > 0
        
    }
}

extension AddBagViewModel {
    func onAddToBag() -> AddBagViewModel {
        return AddBagViewModel(title: self.title, stepValue: 1)
    }
    
    func onIncrement() -> AddBagViewModel {
        guard self.stepValue > 0 else {return self}
        return AddBagViewModel(title: self.title, stepValue: self.stepValue + 1)
    }
    
    func onDecrement() -> AddBagViewModel {
        guard self.stepValue < 10 else {return self}
        return AddBagViewModel(title: self.title, stepValue: self.stepValue - 1)
    }
    
}
