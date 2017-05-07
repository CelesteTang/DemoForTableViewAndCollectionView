//
//  DemoCollectionViewController.swift
//  DemoForTableViewAndCollectionView
//
//  Created by 湯芯瑜 on 2017/5/8.
//  Copyright © 2017年 Hsin-Yu Tang. All rights reserved.
//

import UIKit

class DemoCollectionViewController: UICollectionViewController {

    let countries = ["Spain", "France", "Japan", "India", "Korea", "China", "Philippines", "Argentia", "Brasil"]
    
//    let countries = ["Av de Isabel la Católica, 41004 Sevilla, Spain", "35 Rue du Chevalier de la Barre, 75018 Paris, France", "11 Naitōmachi, Shinjuku-ku, Tōkyō-to 160-0014, Japan", "Mahakali Caves Rd, Sunder Nagar, Andheri East, Sunder Nagar, Jogeshwari East, Mumbai, Maharashtra 400093, India", "40-1003 Hangangno 3(sam)-ga, Yongsan-gu, Seoul, Korea", "Av. Cárcano s/n, Chateau Carreras, Córdoba, Argentia", "Av. Atlântica, S/N - Copacabana, Rio de Janeiro - RJ, 22010-000, Brasil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "DemoCollectionViewCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "customCell")
        let nibOfHeader = UINib(nibName: "DemoHeaderCollectionReusableView", bundle: nil)
        collectionView?.register(nibOfHeader, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "sectionHeader")
        let nibOfFooter = UINib(nibName: "DemoFooterCollectionReusableView", bundle: nil)
        collectionView?.register(nibOfFooter, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "sectionFooter")
        
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumInteritemSpacing = 18
        layout.minimumLineSpacing = 18
        layout.sectionInset = UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18)
        layout.headerReferenceSize = CGSize(width: 375, height: 40)
        layout.footerReferenceSize = CGSize(width: 375, height: 40)
        
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return countries.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! DemoCollectionViewCell
        
        cell.demoImageView.image = UIImage(named: "circle")
        cell.demoLabel.text = countries[indexPath.row]
        cell.backgroundColor = UIColor.lightGray
        
        return cell
    }
    
    // MARK: - Add Header and Footer
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
            
        case UICollectionElementKindSectionHeader:
            
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "sectionHeader", for: indexPath)
            
            header.backgroundColor = .brown
            return header
            
        case UICollectionElementKindSectionFooter:
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "sectionFooter", for: indexPath)
            
            footer.backgroundColor = .lightGray
            return footer
            
        default:
            
            assert(false, "Unexpected element kind")
        }
        
    }

}
