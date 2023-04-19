
//  AsSeenOnViewController.swift
//  lenskart clone 123
//  Created by Ayush Patel on 31/03/23.
import UIKit
class KiaraSpacksViewController: UIViewController {
    var arrImage123 : [String] = ["k11","k21","k31","k41","k51","k6"]
    @IBOutlet weak var kiaraSpacksCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    
    private func registerCell(){
        kiaraSpacksCollectionView.register(UINib(nibName: "KiaraSpacksCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KiaraSpacksCollectionViewCell")
    }

}

extension KiaraSpacksViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage123.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KiaraSpacksCollectionViewCell", for: indexPath) as! KiaraSpacksCollectionViewCell
        cell.KiaraSpacksImageView.image = UIImage(named: arrImage123[indexPath.row])
        
        return cell
    }
}

extension KiaraSpacksViewController: UICollectionViewDelegateFlowLayout{
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
