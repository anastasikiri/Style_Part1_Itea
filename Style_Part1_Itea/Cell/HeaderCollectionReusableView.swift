//
//  HeaderCollectionReusableView.swift
//  LayoutCollectionViewLayout
//
//  Created by Anastasia Bilous on 2022-06-24.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "HeaderCollectionReusableView"
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(textLabel)
        textLabel.frame = bounds
    }
    
    public func configure(with text: String, font: UIFont) {
        textLabel.text = text
        textLabel.font = font
    }
}
