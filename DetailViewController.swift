//
//  DetailViewController.swift
//  MyFaveBands
//
//  Created by user158823 on 9/23/19.
//  Copyright © 2019 Grayce Kakert. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   // @IBOutlet weak var detailDescriptionLabel: UILabel!
   

    @IBOutlet weak var ProductImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            if let photo = ProductImageView {
                photo.image = UImage(named:detailItem!)
            }
        }else{
            ProductImageView.image = UImage(named: "myFaveBands.jpg")
            title = "My Bands"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

