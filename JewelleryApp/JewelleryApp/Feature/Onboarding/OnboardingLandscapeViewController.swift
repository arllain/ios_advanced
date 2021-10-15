//
//  OnboardingLandscapeViewController.swift
//  JewelleryApp
//
//  Created by aluno on 14/10/21.
//

import UIKit

final class OnboardingLandscapeViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("This should not be implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureLayout()
    }
    
    func configureLayout() {
        let label = UILabel()
        label.text = "This is a landscape view controller"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.constrainToSuperviewSafeAreaAxis()
    }
}
