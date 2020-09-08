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

    override func prepareForReuse() {
        super.prepareForReuse()
        separatorView.isHidden = true
    }

    override func awakeFromNib() {
        super.awakeFromNib()
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

        if let separatorStyle = style.separator {
            separatorViewWidthLC?.constant = separatorStyle.width
            separatorViewTopLC?.constant = separatorStyle.offset
            separatorViewBottomLC?.constant = separatorStyle.offset
            separatorViewLeadingLC?.constant = -(separatorStyle.width / 2)
            separatorView.backgroundColor = separatorStyle.color
        }

        self.separatorView.isHidden = !isSeparatorVisible || style.separator == nil
    }

}


extension BackgroundCollectionViewCell {
    func configure(style: SegmentItemStylable, isSeparatorVisible: Bool) {
        self.isSeparatorVisible = isSeparatorVisible
        self.style = style
    }
}
