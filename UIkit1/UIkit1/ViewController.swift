//
//  ViewController.swift
//  UIkit1
//
//  Created by azizah ahmed alshami on 21/08/1444 AH.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var sc: UIScrollView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        sc.contentSize = CGSize(width: 400, height: 700)

        // Do any additional setup after loading the view.
         //   .self.scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sc.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+300)
    }
    
    @IBOutlet weak var sh: UILabel!
    

}

