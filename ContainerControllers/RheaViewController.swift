//
//  RheaViewController.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 04/04/23.
//

import UIKit

class RheaViewController: UIViewController {
    var arrImage123:[String] = ["r1","r2","r3","r4"]
    @IBOutlet weak var rheaCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

       registerCell()
    }
    

    private func registerCell(){
        rheaCollectionView.register(UINib(nibName: "RheaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RheaCollectionViewCell")
    }

}

extension RheaViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage123.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RheaCollectionViewCell", for: indexPath) as! RheaCollectionViewCell
        cell.rheaImageView.image = UIImage(named: arrImage123[indexPath.row])
        
        return cell
    }
    
    
}
extension RheaViewController: UICollectionViewDelegateFlowLayout{

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width-20, height: 350)
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 16, left: 8, bottom: 0, right: 8)
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 8
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 8
}
}
