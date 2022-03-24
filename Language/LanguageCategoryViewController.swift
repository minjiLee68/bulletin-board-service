//
//  dietCategoryViewController.swift
//  CalorieControl
//
//  Created by 이민지 on 2022/03/10.
//

import UIKit

class LanguageCategoryViewController: UIViewController {
    @IBOutlet weak var viewBG: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewmodel = LanguageViewModel.shared
    var lanSwift: String?
    var lanKotlin: String?
    var lanJava: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIViewStyle.viewStyle(view: viewBG)
    }
}

extension LanguageCategoryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewmodel.SWnumOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LanguageCell", for: indexPath) as? LanguageCell else { return UICollectionViewCell() }
        
            let image = UIImage(named: viewmodel.swiftImage[indexPath.item]) ?? UIImage()
            let text = viewmodel.swiftItem[indexPath.item]
            cell.updateUI(image: image, text: text)
            return cell
    }
}

extension LanguageCategoryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 180)
    }
}

class LanguageCell: UICollectionViewCell {
    @IBOutlet weak var imageViewBG: UIView!
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateUI(image: UIImage, text: String) {
        categoryImage.image = image
        categoryLabel.text = text
        
        categoryImage.layer.cornerRadius = 10
        imageViewBG.layer.cornerRadius = 10
        imageViewBG.layer.masksToBounds = true
    }
}
