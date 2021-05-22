//
//  BaseViewController.swift
//  DelegatesExample
//
//  Created by Christian Skorobogatow on 22/5/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var choseSideButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIElements()
    }
    
    func configureUIElements() {
        //View
        view.backgroundColor = .black
        
        //Label
        characterName.textColor = .systemYellow
        
        //Button
        choseSideButton.backgroundColor = .white
        choseSideButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func choseSideButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "selectionVC") as! SelectionViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}

extension BaseViewController: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImage.image = image
        characterName.text = name
        view.backgroundColor = color
    }
}
