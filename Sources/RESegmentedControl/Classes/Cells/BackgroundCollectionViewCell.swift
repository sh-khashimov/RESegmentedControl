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
    @IBOutlet weak var seporatorView: UIView!

    @IBOutlet weak var seporatorViewWidthLC: NSLayoutConstraint?
    @IBOutlet weak var seporatorViewLeadingLC: NSLayoutConstraint?
    @IBOutlet weak var seporatorViewTopLC: NSLayoutConstraint?
    @IBOutlet weak var seporatorViewBottomLC: NSLayoutConstraint?

    private var style: SegmentItemStylable? {
        didSet {
            configUI()
        }
    }

    private var isSeporatorVisible: Bool = false

    override func prepareForReuse() {
        super.prepareForReuse()
        seporatorView.isHidden = true
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

        if let seporatorStyle = style.seporator {
            seporatorViewWidthLC?.constant = seporatorStyle.width
            seporatorViewTopLC?.constant = seporatorStyle.offset
            seporatorViewBottomLC?.constant = seporatorStyle.offset
            seporatorViewLeadingLC?.constant = -(seporatorStyle.width / 2)
            seporatorView.backgroundColor = seporatorStyle.color
        }

        self.seporatorView.isHidden = !isSeporatorVisible || style.seporator == nil
    }

}


extension BackgroundCollectionViewCell {
    func configure(style: SegmentItemStylable, isSeporatorVisible: Bool) {
        self.isSeporatorVisible = isSeporatorVisible
        self.style = style
    }
}
