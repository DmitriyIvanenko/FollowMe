//
//  SceneDelegate.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 30.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds) // Fill all screen
        window?.windowScene = windowScene
        window?.rootViewController = FMTabBarController()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
    }

    
    func sceneDidBecomeActive(_ scene: UIScene) {

    }
    

    func sceneWillResignActive(_ scene: UIScene) {
    }
    

    func sceneWillEnterForeground(_ scene: UIScene) {
    }
    

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

