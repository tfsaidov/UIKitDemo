//
//  CustomView.swift
//  UIkitExample
//
//  Created by Саидов Тимур on 04.02.2022.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var switcher: UISwitch!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }

    private func setupView() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? UIView else { return UIView() }
        
        return view
    }
    
    @IBAction func didChangeSwitcher(_ sender: Any) {
        print("Switcher value did change on", self.switcher.isOn)
    }
}
