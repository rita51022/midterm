//
//  MainPageViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

    @IBOutlet weak var plant1Button: UIButton!
    @IBOutlet weak var plant2Button: UIButton!
    @IBOutlet weak var plant3Button: UIButton!
    @IBOutlet weak var plant4Button: UIButton!
    @IBAction func showPlantTable(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showPlantTable", sender: sender)
    }
    var PlantName : [[String]] = [["野甘草", "圓葉母草","毛地黃","水苦蕒"],["狗骨仔","長節耳草","苞花蔓","蛇根草","羊角藤"],["小舌菊","南國小薊","苦滇菜","小米菊","飛機草"],["李花","紅梅消","山薔薇","枇杷","桑葉懸鉤子","台灣繡線菊"]]
    var PlantImage : [[String]] = [["野甘草", "圓葉母草","毛地黃","水苦蕒"],["狗骨仔","長節耳草","苞花蔓","蛇根草","羊角藤"],["小舌菊","南國小薊","苦滇菜","小米菊","飛機草"],["李花","紅梅消","山薔薇","枇杷","桑葉懸鉤子","台灣繡線菊"]]
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let button = sender as! UIButton
        let idx = Int(button.restorationIdentifier!) ?? 0  //取得button的Restoration ID
        let destinationController = segue.destination as! PlantTableViewController
        switch idx {
        case 0:
            destinationController.idx = 0
            destinationController.plant = PlantName[0]
            destinationController.image = PlantImage[0]
        case 1:
            destinationController.idx = 1
            destinationController.plant = PlantName[1]
            destinationController.image = PlantImage[1]
        case 2:
            destinationController.idx = 2
            destinationController.plant = PlantName[2]
            destinationController.image = PlantImage[2]
        case 3:
            destinationController.idx = 3
            destinationController.plant = PlantName[3]
            destinationController.image = PlantImage[3]
        default:
            break
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
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
