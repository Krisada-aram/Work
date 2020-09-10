//
//  ViewController.swift
//  loginshow
//
//  Created by Nai on 17/3/2563 BE.
//  Copyright © 2563 Nai. All rights reserved.
//

import UIKit
import FirebaseUI
import MapKit

class ViewController: UIViewController {
    

    
    @IBAction func phone(_ sender: Any) {
        UIApplication.shared.open(URL(string: "phoneto:0634590841")!
            as URL, options: [:],completionHandler: nil)
    }
    
    @IBAction func facebook(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://m.facebook.com/msg/214610225591500/?show_interstitial=0&mdotme_uri=https%3A%2F%2Fm.me%2F214610225591500&handler=m.me&referer=https%3A%2F%2Fm.facebook.com%2Fwittcarandtruck%2F&refsrc=https%3A%2F%2Fm.facebook.com%2Fwittcarandtruck%2F&_rdr")! as URL, options: [:],completionHandler: nil)
    }
    
    @IBAction func email(_ sender: Any) {
        UIApplication.shared.open(URL(string: "mailto:mypets3@gmail.com")! as
            URL, options: [:],completionHandler: nil)
    }
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let witt = location(title: "Witt",coordinate:CLLocationCoordinate2D(latitude:7.493499 ,longitude:99.328281))
        
       // map.addAnnotation(witt)
        
       // map.addAnnotations([witt])

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            return
        }
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        
        let authViewController = authUI!.authViewController()
        
        present(authViewController, animated: true, completion: nil)
    }
    
}
extension ViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error == nil else {
            return
        }
        performSegue(withIdentifier: "goHome", sender: self)
    }
}


