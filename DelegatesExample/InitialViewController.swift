//
//  InitialViewController.swift
//  DelegatesExample
//
//  Created by Christian Skorobogatow on 22/5/21.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet var choseSideButton: UIButton!
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonCR()
    }
    
    func configureButtonCR() {
        choseSideButton.layer.cornerRadius = 10
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "ChoseSide") as! ChoseSideViewController
        present(selectionVC, animated: true)
    }
}
