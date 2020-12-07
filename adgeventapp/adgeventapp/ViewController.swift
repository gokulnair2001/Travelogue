//
//  ViewController.swift
//  adgeventapp
//
//  Created by Gokul Nair on 04/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrImgData = [UIImage]()
    var labelText1 = [String]()
    var labelText2 = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.cornerRadius = 10
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrImgData = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3")]
        labelText1 = ["River Rafting","NightLife","Sunset View"]
        labelText2 = ["Nanital","Bengaluru","Mumbai"]
        
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImgData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView
        .dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! profileCollectionViewCell
        cell.imageView.image = arrImgData[indexPath.row]
        cell.nameLbl.text = labelText1[indexPath.row]
        cell.locationLbl.text = labelText2[indexPath.row]
        
       return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.item == 1 {
            self.performSegue(withIdentifier: "next", sender: nil)
        }else{
            print("not updated")
        }
      }
}

