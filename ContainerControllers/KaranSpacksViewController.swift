//
//  KaranSpacksViewController.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 03/04/23.
//

import UIKit

class KaranSpacksViewController: UIViewController {
    var arrImage123 : [String] = ["k7","k8","k9","k10"]
    @IBOutlet weak var karanSCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
    }
    
    private func registerCell(){
        karanSCollectionView.register(UINib(nibName: "KaranSpacksCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KaranSpacksCollectionViewCell")
    }

    
}

extension KaranSpacksViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage123.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KaranSpacksCollectionViewCell", for: indexPath) as! KaranSpacksCollectionViewCell
        cell.karanSpacksImageView.image = UIImage(named: arrImage123[indexPath.row])
        
        return cell
    }
}

extension KaranSpacksViewController: UICollectionViewDelegateFlowLayout{
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
