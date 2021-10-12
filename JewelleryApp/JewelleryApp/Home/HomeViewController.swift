//
//  HomeViewController.swift
//  JewelleryApp
//
//  Created by aluno on 12/10/21.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundGradient()
        configureNavigationBar()
        configureSearchTextField()
    }
}

// MARK: Navigation bar configuration extension
private extension HomeViewController {
    
    func configureNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: nil, action: nil)
     }
    
    func configureSearchTextField() {
        searchTextField.layer.cornerRadius = 18
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 35,
                                               height: self.searchTextField.frame.height))
        searchTextField.leftView = paddingView
        searchTextField.leftViewMode = .always
    }
    
    func configureBackgroundGradient() {
    
        let gradient = CAGradientLayer()
        gradient.frame = UIScreen.main.bounds
        
        gradient.colors = [
            UIColor(named: "gradient_color")!.cgColor,
            UIColor(named: "onboarding_card_backgroud")!.cgColor
        ]

        view.layer.insertSublayer(gradient, at: 0)
    }

}
