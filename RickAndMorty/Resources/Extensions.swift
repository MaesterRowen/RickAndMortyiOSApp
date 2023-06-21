//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/20/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
