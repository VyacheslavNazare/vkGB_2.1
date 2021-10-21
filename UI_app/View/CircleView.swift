//
//  CircleView.swift
//  UI_app
//
//  Created by Вячеслав on 25.08.2021.
//

import UIKit

class CircleView: UIView {
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addSubview(imageView)
        
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        
        imageView.clipsToBounds = true
        
        self.layer.shadowColor = UIColor.systemGray.cgColor
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.9
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
        let radius = frame.size.width / 2
        self.layer.cornerRadius = radius
        imageView.layer.cornerRadius = radius
        
    }
    
    func setImage(_ image: UIImage?){
        imageView.image = image
    }
}
