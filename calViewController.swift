//
//  calViewController.swift
//  loginshow
//
//  Created by Nai on 18/3/2563 BE.
//  Copyright © 2563 Nai. All rights reserved.
//

import UIKit

class calViewController: UIViewController {
    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    @IBOutlet weak var valueC: UITextField!
    @IBOutlet weak var valueD: UITextField!
    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    

    @IBAction func calculation(_ sender: Any) {
        var A = Double(valueA.text!)!
        var B = Double(valueB.text!)!
        var C = Double(valueC.text!)!
        var D = Double(valueD.text!)!
        
        //var Total = A+B

        var Total = (((A-B)*(D/100)*C)+(A-B))/(C*12)
        //var Total = ((YY*(D!*C!))+YY)/MM
        
        result.text = "อัตราผ่อนชำระต่อเดือน \(Total) บาท"
        
    }
}
