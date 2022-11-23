//
//  FMItemInfoView.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 17.11.2022.
//

import UIKit

enum ItemInfotype {
    case repos, gists, followers, following
}

class FMItemInfoView: UIView {
    
    let symbolImageView = UIImageView()
    let titleLabel = FMTitleLabel(textAlignment: .left, fontSize: 14)
    let countLabel = FMTitleLabel(textAlignment: .center, fontSize: 14)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubviews(symbolImageView,titleLabel,countLabel)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    
    func set(itemInfoType: ItemInfotype, withCount count: Int) {
        
        switch itemInfoType {
        case .repos:
            symbolImageView.image = FMSymbols.repos
            titleLabel.text = "Public Repos"
        case .gists:
            symbolImageView.image = FMSymbols.gists
            titleLabel.text = "Public Gists"
        case .followers:
            symbolImageView.image = FMSymbols.followers
            titleLabel.text = "Followers"
        case .following:
            symbolImageView.image = FMSymbols.following
            titleLabel.text = "Following"
        }
        countLabel.text = String(count)
    }
}
