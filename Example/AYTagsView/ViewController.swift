//
//  ViewController.swift
//  AYTagsView
//
//  Created by AprilYoungs on 05/01/2020.
//  Copyright (c) 2020 AprilYoungs. All rights reserved.
//

import UIKit
import AYTagsView

class ViewController: UIViewController {
    @IBOutlet var tagView: AYTagsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tagView.texts = ["April Young",
                         "NSAttributedString",
                         "backgroundColor",
                         "April Yang",
                         "Copyright",
                         "rights reserved",
                         "ViewController",
                         "AYTagsView",
                         "backgroundColor",
                         "April Yang",
                         "Copyright",
                         "rights reserved",
                         "ViewController",
                         "ViewController",
                         "AYTagsView",
                         "backgroundColor",
                         "April Yang",
                         "Copyright",
                         "rights reserved",
                         "ViewController",
                         "ViewController",
                         "AYTagsView",
                         "backgroundColor",
                         "April Yang",
                         "Copyright",
                         "rights reserved",
                         "ViewController",
                         
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

