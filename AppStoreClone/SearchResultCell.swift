//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Swan Nay Phue Aung on 24/08/2024.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    
    //MARK: -UI Components
    private let logoImageView : UIImageView = {
       let logoView = UIImageView()
        logoView.backgroundColor = .red
        logoView.tintColor = .red
        logoView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.layer.cornerRadius = 10
        return logoView
    }()
    
    private let appLabel : UILabel = {
       let appLabel = UILabel()
        appLabel.text = "App"
        return appLabel
    }()
    
    private let categoryLabel : UILabel = {
       let categoryLabel = UILabel()
        categoryLabel.text = "Category"
        return categoryLabel
    }()
    
    private let ratingLabel : UILabel = {
       let ratingLabel = UILabel()
        ratingLabel.text = "12.K"
        return ratingLabel
    }()
    
    private let getButton : UIButton = {
        let getButton = UIButton(type: .system)
        getButton.setTitle("Get", for: .normal)
        getButton.setTitleColor(.blue, for: .normal)
        getButton.titleLabel?.font = .boldSystemFont(ofSize: 12)
        getButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        getButton.translatesAutoresizingMaskIntoConstraints = false
        getButton.layer.cornerRadius = 8
        getButton.backgroundColor = .white
        getButton.clipsToBounds = true
        return getButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Set Up UI
    fileprivate func setUpUI() {
        let labelsStack = UIStackView(arrangedSubviews: [appLabel,categoryLabel,ratingLabel])
        labelsStack.axis = .vertical
        let stackView = UIStackView(arrangedSubviews: [logoImageView,labelsStack,getButton])
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.alignment = .center
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 12),
            getButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -12)

        ])
    }
    
    
    
}
