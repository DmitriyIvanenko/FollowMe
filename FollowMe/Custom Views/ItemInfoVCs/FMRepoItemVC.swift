//
//  FMRepoItemVC.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 17.11.2022.
//

import UIKit

protocol FMRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class FMRepoItemVC: FMItemInfoVC {
    
    weak var delegate: FMRepoItemVCDelegate!
    
    init(user: User, delegate: FMRepoItemVCDelegate) {
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
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
