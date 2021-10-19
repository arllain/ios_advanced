//
//  ProductPageViewController.swift
//  JewelleryApp
//
//  Created by aluno on 16/10/21.
//

import UIKit

final class ProductPageViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    
    private var productNameLabel: UILabel = {
        let productNameLabel = UILabel()
        
        productNameLabel.text = "Pink Diamond"
        productNameLabel.numberOfLines = 0
        
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.textAlignment = .left
        productNameLabel.font = .systemFont(ofSize: 28, weight: .bold)
        productNameLabel.textColor = UIColor(named: "title_color")
        return productNameLabel
    }()

    private var aboutLabel: UILabel = {
        let productNameLabel = UILabel()
        
        productNameLabel.text = "About"
        productNameLabel.numberOfLines = 0
        
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.textAlignment = .left
        productNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        productNameLabel.textColor = UIColor(named: "title_color")
        return productNameLabel
    }()
    
//    private var jewelleryImageProductView: UIImageView = {
//        let jewelleryImageProductView = UIImageView(image: UIImage(named: "product_page_image"))
//        jewelleryImageProductView.translatesAutoresizingMaskIntoConstraints = false
//        jewelleryImageProductView.contentMode = .scaleToFill
//        return jewelleryImageProductView
//    }()
    
//    private var jewelleryImage: UIImage = {
//        let jewelleryImage = UIImage(named: "product_page_image")?.cgImage
//    }()
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStackView()
//        configureProductImage()
//        configureProductName()
//        configureAddCartButton()
    }
}


private extension ProductPageViewController {
    
    func configureStackView() {
        view.backgroundColor = .white
        containerView.roundCorners([.topLeft], radius: 70)
        
        let stackView = UIStackView(arrangedSubviews: [productNameLabel, aboutLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.backgroundColor  = .lightGray
        view.addSubview(stackView)
        //stackView.constrainToSuperviewSafeAreaAxis()
             
 //       stackView.constrainToSuperviewSafeAreaEdges(.initializer(top: 320, left: 16, bottom: 0, right: 16))
        
        stackView.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 5).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15).isActive = true
//
//        productNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
//        productNameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive  = true
        
        //productNameLabel.translatesAutoresizingMaskIntoConstraints = false
 //       aboutLabel.topAnchor.constraint(equalTo: mainContainerStackView.topAnchor, constant: 10).isActive = true

        //        productNameLabel.centerXAnchor.constraint(equalTo: mainContainerStackView.centerXAnchor).isActive = true
//        productNameLabel.widthAnchor.constraint(equalTo: mainContainerStackView.widthAnchor, multiplier: 0.9).isActive = true
//
//        aboutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 45).isActive = true
//        aboutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        aboutLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true

    }
    
//    func configureProductImage() {
//        let view = UILabel()
//        view.frame = CGRect(x: 0, y: 38, width: 430, height: 392)
//        view.backgroundColor = .white
//
//        let image0 = UIImage(named: "product_page_image")?.cgImage
//
//        let layer0 = CALayer()
//
//        layer0.contents = image0
//
//
//        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1.19, tx: 0, ty: -0.04))
//
//        layer0.bounds = view.bounds
//
//        layer0.position = view.center
//
//        view.layer.addSublayer(layer0)
//
//        let parent = self.view!
//
//        parent.addSubview(view)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 375).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 392).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true
//    }

//    func configureProductName() {
//        let view = UILabel()
//
//        view.frame = CGRect(x: 0, y: 0, width: 201, height: 35)
//
//        view.backgroundColor = .red
//
//
//        view.textColor = UIColor(red: 0.629, green: 0.404, blue: 0.518, alpha: 1)
//        view.font = .systemFont(ofSize: 28, weight: .bold)
//
//        view.text = "Pink Diamond"
//
//        let parent = self.view!
//
//        parent.addSubview(view)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 410).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 40).isActive = true
//    }
    
//    func configureAddCartButton(){
//        let view = UILabel()
//
//        view.frame = CGRect(x: 0, y: 0, width: 303, height: 62)
//
//        view.backgroundColor = .gray
//
//
//        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
//
//
//        let parent = self.view!
//
//        parent.addSubview(view)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        view.widthAnchor.constraint(equalToConstant: 303).isActive = true
//
//        view.heightAnchor.constraint(equalToConstant: 62).isActive = true
//
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 55).isActive = true
//
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 732).isActive = true
//    }
}

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
