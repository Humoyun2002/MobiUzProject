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
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.identifier)

        return collectionView
        
    }()
    
    let sideMenuButton = UIButton()
    let backgroundColorView = UIView()
    let mobiUzLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
     }
    private func initViews() {
        
        view.addSubview(collectionView)
        collectionView.layer.borderColor = UIColor.systemGray.cgColor
        collectionView.layer.borderWidth = 2
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
         }
            view.addSubview(backgroundColorView)
            backgroundColorView.backgroundColor = .red
            backgroundColorView.snp.makeConstraints { make in
                make.top.equalToSuperview()
                make.trailing.leading.equalToSuperview()
                make.height.equalTo(170)
            }
            backgroundColorView.addSubview(sideMenuButton)
            sideMenuButton.setImage(UIImage(named: "menu"), for: .normal)
            sideMenuButton.layer.cornerRadius = 25
            sideMenuButton.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
                make.leading.equalToSuperview().inset(10)
                make.width.height.equalTo(50)
            }
            backgroundColorView.addSubview(mobiUzLabel)
            mobiUzLabel.text = "mobiuz"
            mobiUzLabel.textAlignment = .center
            mobiUzLabel.textColor = .white
            mobiUzLabel.font = .systemFont(ofSize: 50, weight: .bold)
            mobiUzLabel.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
                make.leading.equalTo(sideMenuButton.snp.trailing).offset(150)
                make.width.equalTo(200)
                
                
            }
        }
        
        
}
extension HomeView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 6
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as! ImageCell
            
            cell.backgroundColor = .yellow
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: collectionView.frame.width, height:
                            collectionView.frame.height - 640)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 110, left: 0 , bottom: 400, right: 0)
        }
        
    }

