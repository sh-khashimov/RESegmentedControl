//
//  BackgroundCollectionViewCell.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 11/26/19.
//  Copyright © 2019 Sherzod Khashimov. All rights reserved.
//

import UIKit

class BackgroundCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var separatorView: UIView!

    @IBOutlet weak var separatorViewWidthLC: NSLayoutConstraint?
    @IBOutlet weak var separatorViewLeadingLC: NSLayoutConstraint?
    @IBOutlet weak var separatorViewTopLC: NSLayoutConstraint?
    @IBOutlet weak var separatorViewBottomLC: NSLayoutConstraint?

    private var style: SegmentItemStylable? {
        didSet {
            configUI()
        }
    }

    private var isSeparatorVisible: Bool = false
    
    /// gradient layer
    private var gradientLayer: CAGradientLayer?

    override func prepareForReuse() {
        super.prepareForReuse()
        separatorView.isHidden = true
        gradientLayer = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        gradientLayer = nil
        // Initialization code
    }

    private func configUI() {
        guard let style = style else { return }

        bgView.backgroundColor = style.backgroundColor
        bgView.layer.cornerRadius = style.cornerRadius
        bgView.layer.borderColor = style.borderColor
        bgView.layer.borderWidth = style.borderWidth
        self.contentView.layer.masksToBounds = true
        self.applyShadow(with: style.shadow)
        
        if gradientLayer == nil,
            let gradientColor = style.gradientColor {
            gradientLayer = self.bgView.addGradient(with: gradientColor)
        }

        if let separatorStyle = style.separator {
            separatorViewWidthLC?.constant = separatorStyle.width
            separatorViewTopLC?.constant = separatorStyle.offset
            separatorViewBottomLC?.constant = separatorStyle.offset
            separatorViewLeadingLC?.constant = -(separatorStyle.width / 2)
            separatorView.backgroundColor = separatorStyle.color
        }

        self.separatorView.isHidden = !isSeparatorVisible || style.separator == nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer?.frame = self.bounds
        gradientLayer?.cornerRadius = self.style?.cornerRadius ?? bgView.layer.cornerRadius
    }

}


extension BackgroundCollectionViewCell {
    func configure(style: SegmentItemStylable, isSeparatorVisible: Bool) {
        self.isSeparatorVisible = isSeparatorVisible
        self.style = style
    }
}
