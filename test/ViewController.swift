//
//  ViewController.swift
//  test
//
//  Created by Manasa Marlingalar on 07/12/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. load the xib using default init method
        let customView = CustomView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            customView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // 2. load the xib using custom init method
        let customView1 = CustomView(labelText: "Custom init method with lable text")
        customView1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView1)
        NSLayoutConstraint.activate([
            customView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView1.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 10),
            customView1.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        //3. load xib directly in caller method as follows
        let customView2 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
        customView2.backgroundColor = UIColor.red
        customView2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView2)
        NSLayoutConstraint.activate([
            customView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView2.topAnchor.constraint(equalTo: customView1.bottomAnchor, constant: 10),
            customView2.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        //4. Load custom viewcontroller's view programatically
        let customVCView = CustomViewController().view!
        customVCView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customVCView)
        NSLayoutConstraint.activate([
            customVCView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customVCView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customVCView.topAnchor.constraint(equalTo: customView2.bottomAnchor, constant: 10),
            customVCView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        //4. Load programatically created custom View
        let customView3 = MySecondCustomView()
        customView3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView3)
        NSLayoutConstraint.activate([
            customView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView3.topAnchor.constraint(equalTo: customVCView.bottomAnchor, constant: 10),
            customView3.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
