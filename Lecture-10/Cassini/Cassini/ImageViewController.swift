//
//  imageViewController.swift
//  Cassini
//
//  Created by Pala on 2017/12/7.
//  Copyright © 2017年 Pala. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {

    var imageURL: URL? {
        didSet {
            image = nil
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            // notice add '?' because outlets are not set before segue preparation happens
            scrollView?.contentSize = imageView.frame.size
            spinner?.stopAnimating()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if imageView.image == nil {
            fetchImage()
        }
    }
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.minimumZoomScale = 1/25
            scrollView.maximumZoomScale = 1.0
            scrollView.delegate = self
            scrollView.addSubview(imageView)
        }
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    var imageView = UIImageView()
    
    // Multithreading
    private func fetchImage() {
        if let url = imageURL {
            spinner.startAnimating()
            // This part is in Lecture 10, timeline 32min
            // because when users wait too long, they will give up and go back, so we don't need the image anymore
            // if users don't care about 'self.image' anymore, we don't care either
            // add [weak self] but not for memory cycle
            DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                let urlContents = try? Data(contentsOf: url)
                
                // UI things need back to the main queue
                DispatchQueue.main.async {
                    // maybe pic1 need 5 minutes to downlaod
                    // users now want to see pic2 but pic1 just comes back, we don't care about pic1 now
                    // make sure the imageData imageURL equal to current imageURL
                    if let imageData = urlContents, url == self?.imageURL {
                        self?.image = UIImage(data: imageData)
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if imageURL == nil {
//            imageURL = DemoURLs.demo
//        }
    }
}
