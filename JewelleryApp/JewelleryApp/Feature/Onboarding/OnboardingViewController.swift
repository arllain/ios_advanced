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
    }
}

