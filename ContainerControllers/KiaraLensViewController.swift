//
//  KiaraLensViewController.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 28/03/23.
//

import UIKit
class KiaraLensViewController: UIViewController {
    var arrImage123 : [String] = ["08","09","010","011","012","013","014"]
    @IBOutlet weak var KiaraLensCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    private func registerCell(){
        KiaraLensCollection.register(UINib(nibName: "KiaraLensCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KiaraLensCollectionViewCell")
    }
}
extension KiaraLensViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage123.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: KiaraLensCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "KiaraLensCollectionViewCell", for: indexPath) as! KiaraLensCollectionViewCell
        cell.KiaraImageView.image = UIImage(named: arrImage123[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        return cell
    }
}

extension KiaraLensViewController: UICollectionViewDelegateFlowLayout{
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
