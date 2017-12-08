//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Pala on 2017/12/5.
//  Copyright © 2017年 Pala. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController, UISplitViewControllerDelegate {

    let themes = [
        "Sports": "⚽️🏀🏈⚾️🎾🏐🏉🎱🏓🏸",
        "Animals": "🐧🐹🐼🦊🐤🐙🐠🐡🦀🦐",
        "Faces": "😀😅☺️😉😘😛🧐😒😭😪"
    ]
    
    
    // remember add UISplitViewControllerDelegate
    override func awakeFromNib() {
        splitViewController?.delegate = self
    }
    
    // without this func iPhone will enter game screen directly
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if let cvc = secondaryViewController as? ConcentrationViewController {
            if cvc.theme == nil {  // not chose yet
                return true // show the theme screen default in iPhone
            }
        }
        return false  // after chosen, enter the game screen in iPhone
    }
    
    @IBAction func changeTheme(_ sender: Any) {
        // for iPad use splitView
        // remember the state, not refresh all when change theme
        if let cvc = splitViewDetailConcentrationViewController {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                cvc.theme = theme
            }
        // for iPhone use navigation
        // remember the state, not refresh all when change theme
        } else if let cvc = lastSeguedToConcentrationViewController {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                cvc.theme = theme
            }
            navigationController?.pushViewController(cvc, animated: true)
        } else {
            performSegue(withIdentifier: "Choose Theme", sender: sender)
        }
    }
    
    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
        return splitViewController?.viewControllers.last as? ConcentrationViewController
    }
    
    // MARK: - Navigation

    private var lastSeguedToConcentrationViewController: ConcentrationViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            // if let button = sender as? UIButton
            // if let themeName = button.currentTitle
            // too long, use (sender as? UIButton)?.currentTitle
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                    lastSeguedToConcentrationViewController = cvc
                }
            }
        }
    }
}
