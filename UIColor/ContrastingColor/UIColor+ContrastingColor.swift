import UIKit

extension UIColor {
    var contrastingColor: UIColor {
        var white: CGFloat = 0
        self.getWhite(&white, alpha: nil)
        return white > 0.5 ? UIColor.black : UIColor.white
    }
}
