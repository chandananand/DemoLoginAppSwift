//
//  DetailViewController.swift
//  DemoLoginAppSwift
//
//  Created by Chandan Anand on 11/16/17.
//  Copyright © 2017 Chandan Anand. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var nameString:String!
    var dobString:String!
    var imageString:String!
    var descString:String!
    var countryString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        self.nameLabel.text = nameString
        self.dobLabel.text = dobString
        self.descLabel.text = descString
        self.countryLabel.text = countryString
        
        let imgURL = URL(string:imageString)
        let data = NSData(contentsOf: (imgURL)!)
        self.imageView.image = UIImage(data: data! as Data)
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
