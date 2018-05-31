//
//  PlantDetailViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantDetailIconTextCell.self), for: indexPath)as!PlantDetailIconTextCell
            cell.originlocationiconImageView.image = UIImage(named: "earth")
            cell.originlocationLabel.text = plant.originlocation
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantDetailTaiwanlconTextCell.self), for: indexPath)as!PlantDetailTaiwanlconTextCell
            cell.taiwanimageview.image = UIImage(named: "taiwan")
            cell.taiwanlocationlabel.text = plant.taiwanlocation
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantDescriptionTextCell.self), for: indexPath)as!PlantDescriptionTextCell
            cell.descriptionLabel.text = plant.decription
            return cell
        default:
            fatalError("Failed to instantiate the tabel view cell")
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    var plant: Plant = Plant()
    @IBOutlet var headerview: PlantDetailHeaderView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
        
        headerview.headerImageView.image = UIImage(named: plant.image)
        headerview.commonnameLabel.text = plant.Commonname
        headerview.scientificnameLabel.text = plant.Scientificname
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
