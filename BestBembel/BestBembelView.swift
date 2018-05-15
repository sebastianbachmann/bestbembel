//
//  BestBembelView.swift
//  BestBembel
//
//  Created by Sebastian Bachmann on 15.05.18.
//  Copyright © 2018 Sebastian Bachmann. All rights reserved.
//

import UIKit

class BestBembelView: UIView {
    
    private(set) var welcomeToBestBembelLabel = UILabel()
    
    private(set) var bestBembelImage = UIImage()
    private(set) var bestBembelImageView = UIImageView()
    private(set) var bestBembelImageViewLabel = UILabel()
    
    private(set) var bestBembelButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func createSubviews() {
        backgroundColor = .white
        
        var welcomeToBestBembelLabel = UILabel()
        var bestBembelImage = UIImage()
        var bestBembelImageView = UIImageView()
        var bestBembelImageViewLabel = UILabel()
        
        welcomeToBestBembelLabel = {
            let label = UILabel(frame: .zero)
            label.text = "Welcome Best Bembel"
            label.textColor = .white
            label.backgroundColor = .red
            label.font = UIFont(name: "HelveticaNeue-Bold", size: 19)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
            
        }()

        bestBembelImage = {
            let img = UIImage(named: "bembel")
            return img!
        }()
        
        bestBembelImageView = {
            let imgview = UIImageView(frame: .zero)
            imgview.image = bestBembelImage
            imgview.contentMode = .scaleAspectFit
            imgview.translatesAutoresizingMaskIntoConstraints = false
            return imgview
        }()


        bestBembelImageViewLabel = {
            let label = UILabel(frame: .zero)
            label.text = "FFM Bembel"
            label.textColor = .black
            label.backgroundColor = .lightGray
            label.font = UIFont(name: "Avenir-Oblique", size: 13)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
            return label
        }()

        bestBembelButton = {
            let button = UIButton(type: UIButtonType.custom)
            return button
        }()

        bestBembelImageView.addSubview(bestBembelImageViewLabel)
        
        addSubview(welcomeToBestBembelLabel)
        addSubview(bestBembelImageView)
        addSubview(bestBembelButton)

        var layoutconstraints = [NSLayoutConstraint]()
        
        layoutconstraints.append(welcomeToBestBembelLabel.centerXAnchor.constraint(equalTo: centerXAnchor))
        layoutconstraints.append(welcomeToBestBembelLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20.0))
        layoutconstraints.append(welcomeToBestBembelLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor))
        layoutconstraints.append(welcomeToBestBembelLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor))
        
        layoutconstraints.append(bestBembelImageView.topAnchor.constraint(equalTo: welcomeToBestBembelLabel.topAnchor))
        layoutconstraints.append(bestBembelImageView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 20.0))
        layoutconstraints.append(bestBembelImageView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -20.0))
        layoutconstraints.append(bestBembelImageView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 0.0))
        
        layoutconstraints.append(bestBembelImageViewLabel.centerXAnchor.constraint(equalTo: bestBembelImageView.centerXAnchor))
        layoutconstraints.append(bestBembelImageViewLabel.bottomAnchor.constraint(equalTo: bestBembelImageView.bottomAnchor))
        
        layoutconstraints.append(bestBembelButton.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        NSLayoutConstraint.activate(layoutconstraints)
    }
    


}
