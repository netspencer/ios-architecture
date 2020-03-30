//
//  FeedCoordinator.swift
//  iOS Architecture
//
//  Created by Spencer Schoeben on 3/30/20.
//  Copyright © 2020 Spencer Schoeben. All rights reserved.
//

import UIKit
import XCoordinator

enum FeedRoute: Route {
    case feed
    case feedItem
    case close
}

final class FeedCoordinator: NavigationCoordinator<FeedRoute> {
    
    // MARK: Initialize
    
    init() {
        super.init(initialRoute: .feed)
    }
    
    // MARK: Overrides
    
    override func prepareTransition(for route: FeedRoute) -> NavigationTransition {
        switch route {
        case .feed:
            let viewController = FeedViewController.instantiateFromNib()
            return .push(viewController)
    
        default:
            return .dismissToRoot()
            
        }
    }
    
}
