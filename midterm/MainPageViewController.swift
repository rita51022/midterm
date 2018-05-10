//
//  MainPageViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

struct Plant{
    var order = 0
    var PlantName : Array<String> = [""]
    var PlantImage : Array<String>  = [""]
}

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
        destinationController.plant = PlantName[idx]
        destinationController.image = PlantImage[idx]
    }

/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "玄參科": //比對到segue的indentifer
            let destinationController = segue.destination as! PlantTableViewController
            destinationController.plant = ["野甘草", "圓葉母草","毛地黃","水苦蕒"]
            //plant為PlantTableViewController宣告的參數指定植物名稱
            destinationController.image = ["野甘草", "圓葉母草","毛地黃","水苦蕒"]
            //image為PlantTableViewController宣告的參數指定和Assets同名的植物圖片
            destinationController.getPlantURL = ["https://plants-taiwan.blogspot.tw/2014/04/blog-post.html","https://plants-taiwan.blogspot.tw/2015/01/lindernia-rotundifolia-l-alston.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post_3585.html","https://plants-taiwan.blogspot.tw/2015/01/veronica-undulata-wall.html"]
            
        case "茜草科":
            let destinationController = segue.destination as! PlantTableViewController
            destinationController.plant = ["狗骨仔","長節耳草","苞花蔓","蛇根草","羊角藤"]
            destinationController.image = ["狗骨仔","長節耳草","苞花蔓","蛇根草","羊角藤"]
            destinationController.getPlantURL = ["https://plants-taiwan.blogspot.tw/2014/03/blog-post_8175.html","https://plants-taiwan.blogspot.tw/2014/04/blog-post_476.html","https://plants-taiwan.blogspot.tw/2015/02/geophila-herbacea-jacq-o-ktze-1891.html","https://plants-taiwan.blogspot.tw/2014/04/blog-post_876.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post_6.html"]
            
        case "菊科":
            let destinationController = segue.destination as! PlantTableViewController
            destinationController.plant = ["小舌菊","南國小薊","苦滇菜","小米菊","飛機草"]
            destinationController.image = ["小舌菊","南國小薊","苦滇菜","小米菊","飛機草"]
            destinationController.getPlantURL = ["https://plants-taiwan.blogspot.tw/2014/03/blog-post_15.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post_17.html","https://plants-taiwan.blogspot.tw/2014/03/blog-post_1647.html","https://plants-taiwan.blogspot.tw/2014/03/blog-post_20.html","https://plants-taiwan.blogspot.tw/2015/01/erechtites-valerianifolia.html"]
            
        case "薔薇科":
            let destinationController = segue.destination as! PlantTableViewController
            destinationController.plant = ["李花","紅梅消","山薔薇","枇杷","桑葉懸鉤子","台灣繡線菊"]
            destinationController.image = ["李花","紅梅消","山薔薇","枇杷","桑葉懸鉤子","台灣繡線菊"]
            destinationController.getPlantURL = ["https://plants-taiwan.blogspot.tw/2014/02/blog-post_4254.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post_689.html","https://plants-taiwan.blogspot.tw/2014/03/blog-post_8.html","https://plants-taiwan.blogspot.tw/2014/05/blog-post_4593.html","https://plants-taiwan.blogspot.tw/2015/07/spiraea-formosana-hayata.html"]
            
        default:
            break
        }
    }
*/
 
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
