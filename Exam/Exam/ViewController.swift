//
//  ViewController.swift
//  Exam
//
//  Created by Melnychuk Anton on 3/30/19.
//  Copyright © 2019 Melnychuk Anton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    let urlKey = "https://thispersondoesnotexist.com/image"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func click(_ sender: Any) {
        
        if let url = URL(string: urlKey){
            do{
                let data = try Data(contentsOf: url)
                self.ImageView.image = UIImage(data: data)
                
            } catch let err {
                print("ERROR : \(err.localizedDescription)")
            }
            
        }
        
        
        
    }
    
}


