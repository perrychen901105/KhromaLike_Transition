//
//  PaddedLabel.swift
//  KhromaLike
//
//  Created by mac on 14-10-20.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class PaddedLabel: UILabel {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */
    
    var verticalPadding = 0.0;
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection) {
        // check the vertical compact
        if traitCollection.verticalSizeClass == .Compact {
            // No padding when vertically compact
            verticalPadding = 0.0
        } else {
            verticalPadding = 20.0
        }
        // Need to update the layout
        invalidateIntrinsicContentSize()
    }

    override func intrinsicContentSize() -> CGSize {
        var intrinsicSize = super.intrinsicContentSize()
        // Add the padding
        intrinsicSize.height += CGFloat(verticalPadding)
        return intrinsicSize
    }
    
}
