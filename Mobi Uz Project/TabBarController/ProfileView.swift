//
//  ProfileView.swift
//  Mobi Uz Project
//
//  Created by humoyun on 06/08/22.
//

import UIKit
import SnapKit

class ProfileView: UIViewController {
    
    let mainView     = UIView()
    let userImage    = UIImageView()
    let backButton   = UIButton()
    let saveButton   = UIButton()
    let userNameTF   = UITextField()
    let userNumberTF = UITextField()
    let userStreetTF = UITextField()
    let userCartTF   = UITextField()
    let cameraButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appRed
        
        view.addSubview(backButton)
        backButton.setImage(UIImage(named: "back"), for: .normal)
      //  backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        backButton.contentMode = .scaleAspectFill
        backButton.backgroundColor = .red
        backButton.layer.cornerRadius = 25
        backButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalToSuperview().inset(10)
            make.width.height.equalTo(50)
        }
        
        view.addSubview(mainView)
        mainView.backgroundColor = .appWhite
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 30
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(view.snp.height).multipliedBy(0.75)
        }
        mainView.addSubview(userNameTF)
        self.userNameTF.setupLeftImage(imageName: "Group 34")
        self.userNameTF.setupRightImage(imageName: "pen")
        userNameTF.placeholder = "User name"
        userNameTF.textColor = .black
        userNameTF.layer.cornerRadius = 10
        userNameTF.clipsToBounds = true
        userNameTF.backgroundColor = .appGray
        userNameTF.borderStyle = .bezel
        userNameTF.layer.borderColor = UIColor.red.cgColor
        userNameTF.layer.borderWidth = 2
        userNameTF.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }
        mainView.addSubview(userNumberTF)
        self.userNumberTF.setupLeftImage(imageName: "Group 35")
        self.userNumberTF.setupRightImage(imageName: "pen")
        userNumberTF.layer.cornerRadius = 10
        userNumberTF.textColor = .black
        userNumberTF.clipsToBounds = true
        userNumberTF.placeholder = "998901234567"
        userNumberTF.backgroundColor = .appGray
        userNumberTF.borderStyle = .bezel
        userNumberTF.layer.borderColor = UIColor.red.cgColor
        userNumberTF.layer.borderWidth = 2
        userNumberTF.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }
        mainView.addSubview(userCartTF)
        self.userCartTF.setupLeftImage(imageName: "Group 37")
        self.userCartTF.setupRightImage(imageName: "pen")
        userCartTF.layer.cornerRadius = 10
        userCartTF.clipsToBounds = true
        userCartTF.placeholder = "860008202001034"
        userCartTF.backgroundColor = .appGray
        userCartTF.textColor = .black
        userCartTF.borderStyle = .bezel
        userCartTF.layer.borderColor = UIColor.red.cgColor
        userCartTF.layer.borderWidth = 2
        userCartTF.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }
        
        
        let stackView = UIStackView(arrangedSubviews: [userNameTF,userNumberTF , userCartTF ])
        mainView.addSubview(stackView)
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-20)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
            make.height.equalTo(mainView.snp.height).multipliedBy(0.4)
        }
        
        mainView.addSubview(saveButton)
        saveButton.setTitle("Saqlash", for: .normal)
        saveButton.layer.cornerRadius = 10
        saveButton.clipsToBounds = true
        saveButton.backgroundColor = .blackTextColor
        saveButton.setTitleColor(.appWhite, for: .normal)
        saveButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        saveButton.titleLabel?.font = UIFont(name: "Nexa-Bold", size: 20)
        saveButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(stackView.snp.width)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.view.snp.bottom).offset(-130)
        }
        
        view.addSubview(userImage)
        userImage.backgroundColor = .appWhite
        userImage.layer.cornerRadius = 60
        userImage.clipsToBounds = true
        userImage.image = UIImage(named: "image")
        userImage.contentMode = .scaleAspectFill
        userImage.snp.makeConstraints { make in
            make.bottom.equalTo(mainView.snp.top).offset(60)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(120)
        }
         
        view.addSubview(cameraButton)
        cameraButton.backgroundColor = .blackTextColor
        cameraButton.layer.cornerRadius = 15
        cameraButton.clipsToBounds = true
        cameraButton.setImage(UIImage(named: "camera"), for: .normal)
        cameraButton.contentMode = .scaleAspectFill
        cameraButton.snp.makeConstraints { make in
            make.bottom.equalTo(userImage.snp.bottom).offset(-10)
            make.width.height.equalTo(30)
            make.left.equalTo(userImage.snp.right).inset(30)
         }
        
    }
    }
