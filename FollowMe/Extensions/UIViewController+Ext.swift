//
//  UIViewController+Ext.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 08.11.2022.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentFMAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
             let alertVC = FMAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
