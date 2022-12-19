import UIKit

extension UIColor {
    // way 1
    func lighten(by factor: CGFloat) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        red += (1.0 - red) * factor
        green += (1.0 - green) * factor
        blue += (1.0 - blue) * factor

        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    // way 2
      func lighter(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjustBrightness(by: abs(percentage))
    }
}
