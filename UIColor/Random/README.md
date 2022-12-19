# Random Color
```swift
import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
```

# ENG
This is an extension for the UIColor class that creates a randomly colored UIColor object. In this extension, the red, green, and blue variables are defined and these variables are created as random numbers between 0 and 1 using the drand48() function. Then, a UIColor object is created using these variables and this object is returned. This extension can be used, for example, to create randomly colored objects in a game.
# TR
Bu extension, rastgele bir renkli UIColor nesnesi oluşturur. Extension içinde, red, green ve blue değişkenleri tanımlanır ve bu değişkenler, drand48() fonksiyonu kullanılarak 0 ile 1 arasında rastgele bir sayı oluşturulur. Daha sonra, bu değişkenler kullanılarak bir UIColor nesnesi oluşturulur ve bu nesne döndürülür. Bu extension, örneğin bir oyunda rastgele renkli nesneler oluşturmak için kullanılabilir.
