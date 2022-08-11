//
//  HomeImageCell.swift
//  Mobi Uz Project
//
//  Created by humoyun on 07/08/22.
//

import UIKit
import SnapKit

class ImageCell: UICollectionViewCell  {
    
    static let identifier = "ImageCell"
     let mobiUzImage = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 12
        initView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  private func initView() {
 
  }
    
    
}
