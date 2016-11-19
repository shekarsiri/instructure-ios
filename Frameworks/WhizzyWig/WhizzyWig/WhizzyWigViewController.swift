//
// Copyright (C) 2016-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
    
    

//
//  WhizzyWigViewController.swift
//  WhizzyWig
//
//  Created by Nathan Armstrong on 3/14/16.
//
//

import UIKit

public class WhizzyWigViewController: UIViewController {

    public let whizzyWigView = WhizzyWigView(frame: CGRect(x: 0, y: 0, width: 320, height: 43))

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        whizzyWigView.scrollView.scrollEnabled = true
        view.addSubview(whizzyWigView)

        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(WhizzyWigViewController.done))

        makeConstraints()
    }

    func makeConstraints() {
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|[whizzy]|",
            options: [],
            metrics: nil,
            views: ["whizzy": whizzyWigView]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[whizzy]|",
            options: [],
            metrics: nil,
            views: ["whizzy": whizzyWigView]))
    }

    func done() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
