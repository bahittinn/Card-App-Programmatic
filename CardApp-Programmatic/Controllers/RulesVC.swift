//
//  RulesVC.swift
//  CardApp-Programmatic
//
//  Created by Bahittin on 19.07.2023.
//

import UIKit

class RulesVC: UIViewController {

    let rulesLabel    = UILabel()
    let titleLabel    = UILabel()
    let exerciseLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    //MARK: - Configure UI
    func configureUI() {
        configureRulesLabel()
        configureTitleLabel()
        configureExerciseLabel()
    }
    //MARK: - Rules Label Constraints
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
    
    //MARK: - Rules Title Constraints
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "The value of each card represents the number of exercise you do. \n\nJ = 11, Q = 12, K = 13, A= 14"
        titleLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        titleLabel.textAlignment = .center
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor,constant: 25),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30)
        ])
    }
    
    //MARK: - Rules Exercise Constraints
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ =  Push-up \n\n❤️ =  Sit-up \n\n♣️ =  Burpees \n\n♦️ =  Jumping Jacks"
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 25),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
 
}
