//
//  DemoTableViewController.swift
//  DemoForTableViewAndCollectionView
//
//  Created by Celeste on 2017/4/26.
//  Copyright © 2017年 Hsin-Yu Tang. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {

    let countries = ["Spain", "France", "Japan", "India", "Korea", "China", "Philippines", "Argentia", "Brasil"]
    
//    let countries = ["Av de Isabel la Católica, 41004 Sevilla, Spain", "35 Rue du Chevalier de la Barre, 75018 Paris, France", "11 Naitōmachi, Shinjuku-ku, Tōkyō-to 160-0014, Japan", "Mahakali Caves Rd, Sunder Nagar, Andheri East, Sunder Nagar, Jogeshwari East, Mumbai, Maharashtra 400093, India", "40-1003 Hangangno 3(sam)-ga, Yongsan-gu, Seoul, Korea", "Av. Cárcano s/n, Chateau Carreras, Córdoba, Argentia", "Av. Atlântica, S/N - Copacabana, Rio de Janeiro - RJ, 22010-000, Brasil"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 30
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! DemoTableViewCell
        
        cell.demoImageView.image = UIImage(named: "circle")
        cell.demoLabel.text = countries[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
        return "Header"
        
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 40.0
        
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return "Footer"
        
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 20.0
        
    }
}
