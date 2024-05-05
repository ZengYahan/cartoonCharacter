//
//  ViewController.swift
//  cartoonCharacter
//
//  Created by YaHan on 2024/5/5.
//

import UIKit

struct Cartoon {
    let name: String
    let pic: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let spongeBob: [Cartoon] = [Cartoon(name: "海綿寶寶", pic: "海綿寶寶"), Cartoon(name: "派大星", pic: "派大星"), Cartoon(name: "小蝸", pic: "小蝸"), Cartoon(name: "蟹老闆", pic: "蟹老闆"), Cartoon(name: "章魚哥", pic: "章魚哥")
    ]
    
    let crayonShinChan: [Cartoon] = [Cartoon(name: "野原新之助", pic: "小新"), Cartoon(name: "阿呆", pic: "阿呆"), Cartoon(name: "櫻田妮妮", pic: "妮妮"), Cartoon(name: "風間徹", pic: "風間"), Cartoon(name: "佐藤正男", pic: "正男")]
    
    let doraemon: [Cartoon] = [Cartoon(name: "哆拉a夢", pic: "多拉a夢"), Cartoon(name: "野比大雄", pic: "大雄"), Cartoon(name: "源靜香", pic: "靜香"), Cartoon(name: "骨川小夫", pic: "小夫"), Cartoon(name: "剛田武(胖虎)", pic: "胖虎")]
    
    func chageImage() {
        let cartoon: Cartoon
        if segmentedControl.selectedSegmentIndex == 0 {
            cartoon = spongeBob[pageControl.currentPage]
        }else if segmentedControl.selectedSegmentIndex == 1 {
            cartoon = crayonShinChan[pageControl.currentPage]
        }else {
            cartoon = doraemon[pageControl.currentPage]
        }
        nameLabel.text = cartoon.name
        picImageView.image = UIImage(named: cartoon.pic)
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picImageView.image = UIImage(named: "海綿寶寶")
        nameLabel.text = "海綿寶寶"
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        pageControl.currentPage += 1
        chageImage()
    }
    
    @IBAction func preButton(_ sender: Any) {
        pageControl.currentPage -= 1
        chageImage()
    }
    
    @IBAction func pageControl(_ sender: Any) {
        chageImage()
    }
    
    @IBAction func segmentedControl(_ sender: Any) {
        pageControl.currentPage = 0
        chageImage()
    }
    
}

