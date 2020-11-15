//
//  CustomButton.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 11/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton(){
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        backgroundColor = UIColor.purple.withAlphaComponent(0.7)
        layer.cornerRadius = 20
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
    

}
