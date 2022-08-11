//
//  image.swift
//  Mobi Uz Project
//
//  Created by humoyun on 11/08/22.
//


import UIKit

enum TextFieldPosition {
    case left
    case right
}

class TextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10
        
    }
    
    init(text: String = "", placeholder: String = "", image: UIImage? = nil, fontSize: CGFloat = 15 ) {
        super.init(frame: .zero)
        
        self.backgroundColor = .grayFieldColor
        self.textColor = .blackTextColor
        self.text = text
        self.placeholder = placeholder
        self.font = .systemFont(ofSize: fontSize)
    }
    
    func setImage(position: TextFieldPosition, image: UIImage) {
        let imageView = UIImageView()
        imageView.image = image
        if position == .left {
            self.leftView = imageView
            self.leftViewMode = .always
        }
        else {
            self.rightView = imageView
            self.rightViewMode = .always
        }
        
    }
    
    var padding = UIEdgeInsets(top: 0, left: 60, bottom: 0, right: 10)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += 10
        return textRect
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension UITextField {

    //MARK:- Set Image on the right of text fields

  func setupRightImage(imageName:String){
    let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
    imageView.image = UIImage(named: imageName)
    let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
    imageContainerView.addSubview(imageView)
    rightView = imageContainerView
    rightViewMode = .always
    self.tintColor = .lightGray
}

 //MARK:- Set Image on left of text fields

    func setupLeftImage(imageName:String){
       let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 40, height: 40))
       imageView.image = UIImage(named: imageName)
       let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 65, height: 40))
       imageContainerView.addSubview(imageView)
       leftView = imageContainerView
       leftViewMode = .always
       self.tintColor = .lightGray
     }
}
