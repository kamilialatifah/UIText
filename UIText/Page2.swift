//
//  Page2.swift
//  UIText
//
//  Created by Kamilia Latifah on 16/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

class Page2: UIViewController {
    @IBOutlet weak var labelNama: UILabel!
        var boksNama:String! //ga boleh nil//
    
    
    @IBOutlet weak var labelPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNama.text = boksNama

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
