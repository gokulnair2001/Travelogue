//
//  descriptionViewController.swift
//  adgeventapp
//
//  Created by Gokul Nair on 05/12/20.
//

import UIKit

class descriptionViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var bookButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.layer.cornerRadius = 10
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        button5.layer.cornerRadius = 5
        
        bookmarkButton.layer.cornerRadius = 5
        bookmarkButton.layer.borderWidth = 2
        bookmarkButton.layer.borderColor = #colorLiteral(red: 1, green: 0.690787971, blue: 0, alpha: 1)
        
        bookButton.layer.cornerRadius = 5
    }
    

}
