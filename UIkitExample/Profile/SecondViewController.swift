//
//  SecondViewController.swift
//  UIkitExample
//
//  Created by Саидов Тимур on 06.02.2022.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = "qwerty"
        self.mainButton.layer.cornerRadius = 12
        self.mainButton.clipsToBounds = true
        
        if let subview = Bundle.main.loadNibNamed("View", owner: nil, options: nil)?.first as? UIView {
            self.view.addSubview(subview)
            subview.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        }
    }
    
    @IBAction func didTapMainButton(_ sender: Any) {
        print(#function)
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }
}
