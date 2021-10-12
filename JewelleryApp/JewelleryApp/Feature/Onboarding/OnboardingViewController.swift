//
//  OnboardingViewController.swift
//  JewelleryApp
//
//  Created by aluno on 10/10/21.
//

import UIKit

final class OnboardingViewController: UIViewController {
    
    private var container: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(named: "onboarding_card_backgroud")
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.cornerRadius = 25
        return container
    }()
    
    private var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "The best jewellery in The Town Now!"
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 28, weight: .bold)
        titleLabel.textColor = UIColor(named: "title_color")
        return titleLabel
    }()
    
    private var subTitleLabel: UILabel = {
        let subTitleLabel = UILabel()
        subTitleLabel.text = "We Use 100% pure Metals"
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.textAlignment = .center
        subTitleLabel.font = .systemFont(ofSize: 14)
        subTitleLabel.textColor = UIColor(named: "subtitle_color")
        return subTitleLabel
    }()
    
    private var nextButtonImageView: UIImageView = {
        let nextButtonImageView = UIImageView(image: UIImage(named: "onboarding_next_button"))
        nextButtonImageView.translatesAutoresizingMaskIntoConstraints = false
        nextButtonImageView.contentMode = .scaleAspectFit
        return nextButtonImageView
    }()
    
    private var jewelleryImageView: UIImageView = {
        let jewelleryImageView = UIImageView(image: UIImage(named: "jewellery_image"))
        jewelleryImageView.translatesAutoresizingMaskIntoConstraints = false
        jewelleryImageView.contentMode = .scaleAspectFit
        return jewelleryImageView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("This should not be implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStackView()
    }
}

private extension OnboardingViewController {
    
    func configureStackView() {
        view.backgroundColor = UIColor(named: "onboarding_background")
        
        view.addSubview(container)
       
        if UIDevice.current.userInterfaceIdiom  == .pad {
//            container.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 10).isActive = true
//            container.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -10).isActive = true
            container.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
            container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        }else {
            container.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 10).isActive = true
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
            container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        }
    
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel, nextButtonImageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.setCustomSpacing(16, after: subTitleLabel)
        
        stackView.axis = .vertical
        stackView.spacing = 8
        container.addSubview(stackView)
        
        stackView.constrainToSuperviewSafeAreaEdges(.initializer(top: 16, left: 16, bottom: 0, right: 16))
        nextButtonImageView.widthAnchor.constraint(equalToConstant: 85).isActive = true
        nextButtonImageView.heightAnchor.constraint(equalToConstant: 85).isActive = true
        
        view.addSubview(jewelleryImageView)
        jewelleryImageView.bottomAnchor.constraint(equalTo: container.topAnchor).isActive = true
        if UIDevice.current.userInterfaceIdiom  == .pad {
            jewelleryImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6 ).isActive = true
        } else {
            jewelleryImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        }
        jewelleryImageView.heightAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        jewelleryImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func configureLayout() {
        view.backgroundColor = UIColor(named: "onboarding_background")
        
        view.addSubview(container)
        container.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 10).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        
        container.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 30).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.9).isActive = true
        
        container.addSubview(subTitleLabel)
        subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        subTitleLabel.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        
        container.addSubview(nextButtonImageView)
        nextButtonImageView.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        nextButtonImageView.widthAnchor.constraint(equalToConstant: 85).isActive = true
        nextButtonImageView.heightAnchor.constraint(equalToConstant: 85).isActive = true
        nextButtonImageView.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 16).isActive = true
        nextButtonImageView.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8).isActive = true

        view.addSubview(jewelleryImageView)
        jewelleryImageView.bottomAnchor.constraint(equalTo: container.topAnchor).isActive = true
        jewelleryImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        jewelleryImageView.heightAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        jewelleryImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

