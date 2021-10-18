//
//  ProductPageViewController.swift
//  JewelleryApp
//
//  Created by aluno on 16/10/21.
//

import UIKit

final class ProductPageViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    
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
    }
    
    func configureProductImage() {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 38, width: 430, height: 392)
        view.backgroundColor = .white

        let image0 = UIImage(named: "product_page_image")?.cgImage
 
        let layer0 = CALayer()

        layer0.contents = image0
        

        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1.19, tx: 0, ty: -0.04))

        layer0.bounds = view.bounds

        layer0.position = view.center

        view.layer.addSublayer(layer0)

        let parent = self.view!

        parent.addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 375).isActive = true
        view.heightAnchor.constraint(equalToConstant: 392).isActive = true
        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true
    }

    func configureProductName() {
        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: 201, height: 35)
        
        view.backgroundColor = .white
        
        
        view.textColor = UIColor(red: 0.629, green: 0.404, blue: 0.518, alpha: 1)
        view.font = .systemFont(ofSize: 28, weight: .bold)
        
        view.text = "Pink Diamond"

        let parent = self.view!
        
        parent.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 410).isActive = true
        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 30).isActive = true
    }
    
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
