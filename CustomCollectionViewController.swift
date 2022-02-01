//
//  CustomCollectionViewController.swift
//  iconview
//
//  Created by Alex Christopherson on 1/28/22.
//

import UIKit

class CustomCollectionViewController
: UIViewController,
    UICollectionViewDataSource,
    UICollectionViewDelegate
{

    @IBOutlet weak var iconCollectionView: UICollectionView!
    
    var appIcons = AppIconRepo().getIcons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        iconCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        appIcons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iconCollectionCell", for: indexPath)
        
        // without this loop, icons were overlapping each other
        for view in cell.contentView.subviews {
            view.removeFromSuperview()
        }

        let imageView = UIImageView(frame: cell.bounds)
        let image : UIImage = UIImage(named: appIcons[indexPath.row].image)!
        imageView.image = image
        cell.contentView.addSubview(imageView)

        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
