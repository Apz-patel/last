
//  NewLaunchesSpacksViewController.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 28/03/23.
import UIKit
var arrimage1 : [String] = ["01","02","03","04","05","06","07"]
class NewLaunchesSpacksViewController: UIViewController {
    @IBOutlet weak var spacksCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    private func registerCell(){
        spacksCollectionView.register(UINib(nibName: "NewSpacksCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewSpacksCollectionViewCell")
    }
    }
    extension NewLaunchesSpacksViewController : UICollectionViewDelegate,UICollectionViewDataSource{
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrimage1.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewSpacksCollectionViewCell", for: indexPath) as! NewSpacksCollectionViewCell
            cell.spacksImageView.image = UIImage(named: arrimage1[indexPath.row])
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            return cell
        }
        
        
    }
extension NewLaunchesSpacksViewController: UICollectionViewDelegateFlowLayout{
    
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
