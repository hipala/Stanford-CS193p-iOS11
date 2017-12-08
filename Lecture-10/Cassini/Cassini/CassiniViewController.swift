//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Pala on 2017/12/7.
//  Copyright © 2017年 Pala. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = segue.destination.contents as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            // visibleViewController: The view controller associated with the currently visible view in the navigation interface.
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
