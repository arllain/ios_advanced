//
//  OnboardingViewController.swift
//  JewelleryApp
//
//  Created by aluno on 10/10/21.
//

import UIKit

final class OnboardingViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("This should not be implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
}

private extension OnboardingViewController {
    
    func configureLayout() {
        view.backgroundColor = UIColor(named: "onboarding_background")
        
        let container = UIView()
        container.backgroundColor = UIColor(named: "onboarding_card_backgroud")
        container.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(container)
        container.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 10).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        container.heightAnchor.constraint(equalToConstant: 300).isActive = true
        container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        
        container.layer.cornerRadius = 25
        
        let titleLabel = UILabel()
        titleLabel.text = "The best jewellery in The Town Now!"
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 28, weight: .bold)
        titleLabel.textColor = UIColor(named: "title_color")
        
        container.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 30).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.90).isActive = true
        
        
    }
}

