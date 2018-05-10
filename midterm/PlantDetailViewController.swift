//
//  PlantDetailViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantDetailViewController: UIViewController {
    
    @IBOutlet var plantImageView: UIImageView!
    var plantImageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        plantImageView.image = UIImage(named: plantImageName)
        //顯示植物圖片
        // Do any additional setup after loading the view.
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
