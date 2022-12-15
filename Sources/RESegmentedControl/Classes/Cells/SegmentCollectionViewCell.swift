//
//  SegmentCollectionViewCell.swift
//  RESegmentedControl
//
//  Created by Sherzod Khashimov on 7/10/18.
//  Copyright © 2018 Sherzod Khashimov. All rights reserved.
//

import UIKit

internal class SegmentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!

    @IBOutlet weak var imageViewHeightLC: NSLayoutConstraint?
    
    @IBOutlet weak var stackViewTrailingDynamicLC: NSLayoutConstraint?
    @IBOutlet weak var stackViewLeadingDynamicLC: NSLayoutConstraint?
    @IBOutlet weak var stackViewLeadingStaticLC: NSLayoutConstraint?
    @IBOutlet weak var stackViewTrailingStaticLC: NSLayoutConstraint?
    
    private lazy var imageDownload = ImageDownloader()

    private var item: SegmentModel? {
        didSet {
            textLabel.text = item?.title ?? ""
            textLabel.isHidden = item?.title == nil

            imageView.isHidden = !(item?.isImageAvailable ?? false)
        }
    }

    func loadImageIfNeeded() {
        if let imageUrl = item?.imageUrl {
            imageDownload.downloadImage(url: imageUrl) { [weak self] (image, url, error) in
                guard let image = image else { return }
                guard imageUrl == url else { return }
                self?.imageView.image = image.withRenderingMode(self?.style?.imageRenderMode ?? .automatic)
            }
        } else if let imageName = item?.imageName {
            let bundle = item?.bundle ?? Bundle.main
            if let image = UIImage(named: imageName, in: bundle, compatibleWith: nil) {
                imageView.image = image.withRenderingMode(style?.imageRenderMode ?? .automatic)
            }
        }
    }

    func cancelImageDownloadIfNeeded() {
        guard item?.imageUrl != nil else { return }
        imageDownload.cancel()
    }

    private var style: SegmentItemStylable? {
        didSet {
            configUI()
        }
    }
    
    private var segmentContentWidthType: SegmentContentWidthType = .dynamic {
        didSet {
            configStackView()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        item = nil
        imageView.image = nil
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        item = nil
    }

    override var isSelected: Bool {
        didSet {
            if isSelected != oldValue {
                self.setNeedsLayout()
                let duration = 0.5
                if #available(iOS 10.0, *) {
                    let layoutAnimator = UIViewPropertyAnimator(duration: duration, dampingRatio: 1.3) {
                        self.layoutIfNeeded()
                    }
                    layoutAnimator.startAnimation()
                } else {
                    // Fallback on earlier versions
                    UIView.animate(withDuration: duration) {
                        self.layoutIfNeeded()
                    }
                }
            }
        }
    }

    private func configUI() {
        guard let style = style else { return }
        stackView?.spacing = style.spacing
        stackView?.axis = style.axis
        imageViewHeightLC?.constant = style.imageHeight

        if let shadowStyle = style.shadow {
            self.applyShadow(with: shadowStyle)
        }
    }
    
    private func configStackView() {
        stackViewTrailingDynamicLC?.isActive = segmentContentWidthType == .dynamic
        stackViewLeadingDynamicLC?.isActive = segmentContentWidthType == .dynamic
        stackViewTrailingStaticLC?.isActive = segmentContentWidthType == .full
        stackViewLeadingStaticLC?.isActive = segmentContentWidthType == .full
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        guard let style = style else { return }
        if isSelected {
            self.textLabel.textColor = style.selectedTextColor
            self.textLabel.font = style.selectedFont ?? style.font
            self.textLabel.textAlignment = style.selectedTextAlignment ?? style.textAlignment ?? .natural
            self.imageView?.tintColor = style.selectedTintColor
        } else {
            self.textLabel.textColor = style.textColor
            self.textLabel.font = style.font
            self.textLabel.textAlignment = style.textAlignment ?? .natural
            self.imageView?.tintColor = style.tintColor
        }
    }

}

extension SegmentCollectionViewCell {
    func configure(_ item: SegmentModel, style: SegmentItemStylable, segmentContentWidthType: SegmentContentWidthType) {
        self.style = style
        self.item = item
        self.segmentContentWidthType = segmentContentWidthType
    }
}
