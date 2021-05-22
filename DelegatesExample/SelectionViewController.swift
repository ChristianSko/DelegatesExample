//
//  SelectionViewController.swift
//  DelegatesExample
//
//  Created by Christian Skorobogatow on 22/5/21.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionViewController: UIViewController {
    
    var delegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIElements()
    }
    
    func configureUIElements() {
        //View
        view.backgroundColor = .black
    }

    @IBAction func tappedImperialSide(_ sender: UIButton) {
        delegate.didTapChoice(image: UIImage(named: "darthVader")!, name: "Darth Vader is your Boss!", color: .red)
        dismiss(animated: true, completion: nil)
    }
    

    
    @IBAction func tappedRebelSide(_ sender: UIButton) {
        delegate.didTapChoice(image: UIImage(named: "yoda")!, name: "Master Yoda will guide you...", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
}
