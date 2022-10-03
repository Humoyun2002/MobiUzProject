//
//  HomeView.swift
//  Mobi Uz Project
//
//  Created by humoyun on 06/08/22.
//

import UIKit
import SnapKit

class HomeView: UIViewController {
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .vertical
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(VerticalMenuCell.self, forCellWithReuseIdentifier: VerticalMenuCell.identifier)
        
        return collectionView
        
    }()
    
    let sideMenuButton = UIButton()
    let backgroundColorView = UIView()
    let EvosLabel = UILabel()
    let welcomeLabel = UILabel()
    let profileButton = UIButton()
    let stikerImage = UIImageView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appWhite
     
        initViews()
    }
 
    func initViews() {
    
        view.addSubview(sideMenuButton)
        sideMenuButton.setImage(UIImage(named: "Group"), for: .normal)
        sideMenuButton.layer.cornerRadius = 5
        sideMenuButton.layer.borderColor = UIColor.green.cgColor
        sideMenuButton.layer.borderWidth = 1
        sideMenuButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalToSuperview().inset(50)
            make.width.height.equalTo(30)
        }
        view.addSubview(profileButton)
        profileButton.setImage(UIImage(named: "Icon"), for: .normal)
        profileButton.layer.cornerRadius = 5
        profileButton.layer.borderColor = UIColor.green.cgColor
        profileButton.layer.borderWidth = 1
        profileButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.trailing.equalToSuperview().inset(50)
            make.width.height.equalTo(30)
        }
        view.addSubview(EvosLabel)
        EvosLabel.text = "Evosga"
        EvosLabel.textAlignment = .center
        EvosLabel.textColor = .green
        EvosLabel.font = .systemFont(ofSize: 25, weight: .bold)
        EvosLabel.snp.makeConstraints { make in
            make.top.equalTo(sideMenuButton.snp.top).multipliedBy(2.2)
            make.leading.equalToSuperview().inset(50)
        }
        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Xush kelibsiz"
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .black
        welcomeLabel.font = .systemFont(ofSize: 25, weight: .bold)
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(EvosLabel.snp.top).offset(30)
            make.leading.equalToSuperview().inset(50)
        }
        view.addSubview(stikerImage)
        stikerImage.image = UIImage(named: "image")
        stikerImage.snp.makeConstraints { make in
            make.top.equalTo(EvosLabel.snp.top).offset(30)
            make.leading.equalTo(welcomeLabel.snp.leading).multipliedBy(4.3)
            make.width.height.equalTo(30)
        }
        view.addSubview(collectionView)
         
        collectionView.snp.makeConstraints { make in
            collectionView.layer.cornerRadius = 20
            make.top.equalTo(welcomeLabel.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(80)
        }
    }
    
    
}
extension HomeView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalMenuCell.identifier, for: indexPath) as! VerticalMenuCell
        
 
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 20) / 1, height: 100)
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0 , left: 0 , bottom: 0 , right: 0)
    }
    
}

