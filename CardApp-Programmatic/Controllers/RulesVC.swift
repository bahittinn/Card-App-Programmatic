//
//  RulesVC.swift
//  CardApp-Programmatic
//
//  Created by Bahittin on 19.07.2023.
//

import UIKit

class RulesVC: UIViewController {

    let rulesLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureRulesLabel()
    }
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.text = "Rules"
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.font = .systemFont(ofSize: 40, weight: .bold)
        rulesLabel.textAlignment = .center
        NSLayoutConstraint.activate([
            rulesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rulesLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30)
        ])
    }
 
}
