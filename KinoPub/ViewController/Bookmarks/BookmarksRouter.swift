//
//  BookmarksRouter.swift
//  KinoPub
//
//  Created by Maksim Kolesnik on 06/03/2020.
//  Copyright (c) 2020 Maksim Kolesnik. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

public final class BookmarksRouter {
    public weak var output: BookmarksRouterOutput?
    public weak var viewController: UIViewController?

}

extension BookmarksRouter: BookmarksRouterInput {
    public func didSelect(model: Bookmark) {
        do {
            try Transition(source: viewController)
                .openModule(using: BookmarkFactory(), with: { (source, destination) in
                    source.navigationController?.pushViewController(destination, animated: true)
//                    source.showDetailViewController(UINavigationController.init(rootViewController: destination), sender: nil)
                })
                .perform(moduleInput: { (presenter) in
                    presenter.setupWith(model)
                })
        } catch {
            print(error)
        }

    }
}
