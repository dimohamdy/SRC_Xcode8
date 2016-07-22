//
//  TestViewController.swift
//  TestPermissionLeaks
//
//  Created by binaryboy on 7/18/16.
//  Copyright © 2016 Ahmed Hamdy. All rights reserved.
//

import UIKit
import Permission
class TestViewController: UIViewController {
    let permission: Permission? = .Microphone
var txt = "HI"
    override func viewDidLoad() {
        super.viewDidLoad()

        //i will fix it
        // Do any additional setup after loading the view.
        permission!.request { [weak self] status in
            self!.printTest()
            switch status {
            case .authorized:
                self!.printTest()
                print("authorized")
            case .denied, .disabled, .notDetermined:
                self!.printTest()
                print("Denied Disabled NotDetermined")

            }

        }
    }
    func printTest() {
        print(self.txt+"test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

    }
    deinit {
        // perform the deinitialization
        print("TestViewController deinit")
    }
    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
