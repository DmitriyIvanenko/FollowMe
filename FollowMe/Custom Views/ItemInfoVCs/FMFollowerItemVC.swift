//
//  FMFollowerItemVC.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 17.11.2022.
//

import UIKit

protocol FMFollowerItemVCDelegate: AnyObject {
    
    func didTapGetFollowers(for user: User)
}

class FMFollowerItemVC: FMItemInfoVC {
    
    weak var delegate: FMFollowerItemVCDelegate!
    
    
    init(user: User, delegate: FMFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Github Followers")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
