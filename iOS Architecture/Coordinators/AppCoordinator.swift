//
//  AppCoordinator.swift
//  iOS Architecture
//
//  Created by Spencer Schoeben on 3/30/20.
//  Copyright © 2020 Spencer Schoeben. All rights reserved.
//

import UIKit
import XCoordinator

enum AppRoute: Route {
    case feed
}

final class AppCoordinator: TabBarCoordinator<AppRoute> {
    
    private let feedRouter: StrongRouter<FeedRoute>
    
    // MARK: Initialization
    
    convenience init() {
        let feedCoordinator = FeedCoordinator()
        feedCoordinator.rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent, tag: 0)
        
        self.init(feedRouter: feedCoordinator.strongRouter)
    }
    
    init(feedRouter: StrongRouter<FeedRoute>) {
        self.feedRouter = feedRouter
        super.init(tabs: [feedRouter], select: feedRouter)
    }
}
