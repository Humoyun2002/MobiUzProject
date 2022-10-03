//
//  HomeImageCell.swift
//  Mobi Uz Project
//
//  Created by humoyun on 07/08/22.


import UIKit

class VerticalMenuCell: UICollectionViewCell {
    
    static let identifier = "VerticalMenuCell"
    
    let backgroundColorView = UIView()
    let foodName    = UILabel()
    let kitchenName = UILabel()
    let imageFood   = UIImageView()
    let moneyLabel  = UILabel()
    let sumLabel    = UILabel()
    let addbutton   = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        
        self.addSubview(backgroundColorView)
        backgroundColorView.layer.cornerRadius = 10
        backgroundColorView.backgroundColor = .appGreen
        backgroundColorView.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(self.snp.top).offset(21)
        }
        backgroundColorView.addSubview(imageFood)
        imageFood.image = #imageLiteral(resourceName: "gamburger")
        imageFood.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(20)
            make.top.equalTo(self.snp.top)
            make.width.height.equalTo(80)
        }
        
        backgroundColorView.addSubview(kitchenName)
        kitchenName.text = "Evos Burger"
        kitchenName.textAlignment = .center
        kitchenName.textColor = .appWhite
        kitchenName.font = .systemFont(ofSize: 10)
        kitchenName.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(imageFood.snp.trailing).inset(-20)
        }
        
        backgroundColorView.addSubview(foodName)
        foodName.text = "Gamburger"
        foodName.textColor = .appWhite
        foodName.textAlignment = .center
        foodName.font = .boldSystemFont(ofSize: 18)
        foodName.snp.makeConstraints { (make) in
            make.leading.equalTo(kitchenName.snp.leading)
            make.bottom.equalTo(kitchenName.snp.bottom).offset(-5)
            make.top.equalTo(backgroundColorView.snp.top)
        }
        backgroundColorView.addSubview(moneyLabel)
        moneyLabel.text = "15000"
        moneyLabel.textColor = .appWhite
        moneyLabel.font = .boldSystemFont(ofSize: 18)
        moneyLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(kitchenName.snp.leading)
            make.top.equalTo(kitchenName.snp.top).offset(5)
            make.bottom.equalTo(backgroundColorView.snp.bottom)
        }
        backgroundColorView.addSubview(addbutton)
        addbutton.setImage(#imageLiteral(resourceName: "addbutton"), for: .normal)
        addbutton.snp.makeConstraints { (make) in
            make.trailing.equalTo(backgroundColorView.snp.trailing).inset(25)
            make.centerY.equalTo(backgroundColorView.snp.centerY)
            make.width.height.equalTo(30)
        }
    }
}
