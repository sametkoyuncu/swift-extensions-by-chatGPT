# Contrasting Color

```swift
import UIKit

extension UIColor {
    var contrastingColor: UIColor {
        var white: CGFloat = 0
        self.getWhite(&white, alpha: nil)
        return white > 0.5 ? UIColor.black : UIColor.white
    }
}

```

## Usage

### ENG

With this extension, you can add the "contrastingColor" method to any UIColor object. You can use this method to create a color that is the opposite of the color of the object. For example:

### TR

Bu extension sayesinde, herhangi bir UIColor nesnesine "contrastingColor" metodunu eklemiş olursunuz. Bu metodu kullanarak, o nesnenin rengine zıt bir renk oluşturabilirsiniz. Örneğin:

```swift
let color = UIColor.red
let contrastingColor = color.contrastingColor // UIColor.white
```

### ENG

This will create a white color that is the opposite of the color of the "color" variable. If the "color" variable's color were light, the "contrastingColor" variable would take on the value of black.

### TR

Bu şekilde, "color" değişkeninin rengine zıt olarak beyaz bir renk oluşturulmuş olur. Eğer "color" değişkeninin rengi açık olsaydı, "contrastingColor" değişkeni siyah bir renk alırdı.
