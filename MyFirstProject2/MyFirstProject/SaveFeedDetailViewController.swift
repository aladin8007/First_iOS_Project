//
//  FeedDetailViewController.swift
//  MyFirstProject
//
//  Created by Montri Sriraksa on 5/30/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit

class SaveFeedDetailViewController: UIViewController {
    @IBOutlet weak var headerImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var detailTextViewLabel: UITextView!
    
    
    var news:News?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.news = News(title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "พยุต", view: 2, createDate: "29/06/600000000000000000", groupLabel: "A1")
        
        // Do any additional setup after loading the view.
        
        setupUI()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onClickDeleteButton(_ sender: Any) {
        print("Click Delete Button")
        if let news = self.news{
            persist.delete(news: news)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func setupUI(){
        if let news = self.news{
            self.headerImgView.image = self.news?.iconImage
        }
        
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
