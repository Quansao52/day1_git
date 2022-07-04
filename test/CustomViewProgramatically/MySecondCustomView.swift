//
//  MySecondCustomView.swift
//  test
//
//  Created by Manasa Marlingalar on 10/12/20.
//

import UIKit

class MySecondCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViews()
    }

    init (labelText: String) {
        super.init(frame: .zero)
        createSubViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createSubViews()
    }

    // Creating subview
    private func createSubViews() {
        backgroundColor = .black
        let k = 0;
        let label = UILabel()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.text = "View created programatically"
        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
