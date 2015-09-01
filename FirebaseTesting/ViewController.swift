//
//  ViewController.swift
//  FirebaseTesting
//
//  Created by Ronald Hernandez on 8/31/15.
//  Copyright (c) 2015 Wahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    var ref = Firebase (url: "https://testtttappp.firebaseio.com/")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //listens to whatever data has been changed.

        let newObject = "this is a new object"

        ref.childByAppendingPath("ObjectPath").setValue(newObject)

        ref.childByAppendingPath("ObjectPathTwo").childByAppendingPath("SubPath").setValue("This is a further path")


        ref.observeEventType(.Value, withBlock: {
            snapshot in

            println(snapshot.value.objectForKey("ObjectPath") as! String)

        })




           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

