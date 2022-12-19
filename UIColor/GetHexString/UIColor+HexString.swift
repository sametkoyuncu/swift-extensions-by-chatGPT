import UIKit

extension UIColor {
    var hexString: String {
        let components = self.cgColor.components
        let r = components?[0] ?? 0.0
        let g = components?[1] ?? 0.0
        let b = components?[2] ?? 0.0
        let a = components?[3] ?? 0.0

        return String(format: "#%02lX%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)), lroundf(Float(a * 255)))
    }
}