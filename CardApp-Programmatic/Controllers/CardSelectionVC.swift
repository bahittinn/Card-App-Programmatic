//
//  ViewController.swift
//  CardApp-Programmatic
//
//  Created by Bahittin on 19.07.2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton    =  CWButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton   =  CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton   =  CWButton(backgroundColor: .systemBlue, title: "Rules")
    var timer: Timer!
    var cards: [UIImage] = Card.allValues
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        startTimer()
        configureUI()
    }
    
    //MARK: - <#Section Heading#>
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    //MARK: - Card ImageView Constrains
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "10C")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -80)
        ])
    }
    //MARK: - Constraints Stop button
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        stopButton.layer.cornerRadius = 8
        stopButton.addTarget(self, action: #selector(stopButtonClicked), for: .touchUpInside)
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 250),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 60),
            stopButton.leadingAnchor.constraint(equalTo: cardImageView.leadingAnchor)
        ])
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    //MARK: - Constraints Reset button
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.layer.cornerRadius = 8
        resetButton.addTarget(self, action: #selector(restartButtonClicked), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 90),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 40),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor)
        ])
    }
    //MARK: - Constraints Rules button
    func configureRulesButton() {
        view.addSubview(rulesButton)
        rulesButton.translatesAutoresizingMaskIntoConstraints = false
        rulesButton.layer.cornerRadius = 8
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 90),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 40),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
        ])
    }
    @objc func presentRulesVC() {
        present(RulesVC(), animated: true)
    }
    
    //MARK: - Starts timer function
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    //MARK: - Shows random image function
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    //MARK: - Restarts button click
    @objc func restartButtonClicked() {
        timer.invalidate()
        startTimer()
    }
    //MARK: - stop button click
    @objc func stopButtonClicked() {
        timer.invalidate()
    }
    
}

