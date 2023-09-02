//
//  GradientView.swift
//  SparrowCode
//
//  Created by Илья Дубровский on 02.09.2023.
//

import UIKit

class GradientView: UIView {

    private let gradientView = CAGradientLayer()
    private let gradientStartColor: UIColor
    private let gradientEndColor: UIColor
    private let cornerRadius: Double?
    private let needForShadow: Bool

    init(gradientStartColor: UIColor, gradientEndColor: UIColor, cornerRadius: Double? = nil, needForShadow: Bool = false) {
        self.gradientStartColor = gradientStartColor
        self.gradientEndColor = gradientEndColor
        self.cornerRadius = cornerRadius
        self.needForShadow = needForShadow
        super.init(frame: .zero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func draw(_ rect: CGRect) {
        gradientView.frame = self.bounds
        gradientView.colors = [gradientEndColor.cgColor, gradientStartColor.cgColor]
        gradientView.startPoint = CGPoint(x: 1, y: 1)
        gradientView.endPoint = CGPoint(x: 0, y: 0)
        gradientView.cornerRadius = self.cornerRadius ?? 0

        if needForShadow {
            gradientView.shadowRadius = 8.0
            gradientView.shadowOpacity = 0.33
            gradientView.shadowColor = UIColor.black.cgColor
            gradientView.shadowOffset = CGSize(width: 0.0, height: 10.0)
        }
        layer.insertSublayer(gradientView, at: 0)
    }
}
