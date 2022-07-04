//
//  CustomView.swift
//  test
//
//  Created by Manasa Marlingalar on 10/12/20.
//

import UIKit

class CustomView: UIView {
    @IBOutlet weak var label: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        let view = loadNib()
        view.backgroundColor = UIColor.blue
    }

    // calling of loadNib() method is not required here.
    // this initializer will call init(frame: CGRect) any how we are calling loadnib in that method.
    //for demo purpose i added in every places.
    init (labelText: String) {
        super.init(frame: .zero)
        let view = loadNib()
        view.backgroundColor = UIColor.green
    }

    //don't call loadNib() method here, if you added class name to view.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult func loadNib() -> UIView {
        let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? UIView
        view?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view?.frame = bounds
        addSubview(view!)
        return view!
    }
}

