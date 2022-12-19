# Light Color Check

```swift
import UIKit

extension UIColor {
    var isLight: Bool {
        var white: CGFloat = 0
        self.getWhite(&white, alpha: nil)
        return white > 0.5
    }
}

```

## Usage

### ENG

With this extension, you can add the "isLight" property to any UIColor object. You can use this property to check if the color of the object is light or dark. For example:

### TR

Bu extension sayesinde, herhangi bir UIColor nesnesine "isLight" özelliğini eklemiş olursunuz. Bu özelliği kullanarak, o nesnenin renginin açık mı yoksa koyu mu olduğunu kontrol edebilirsiniz. Örneğin:

```swift
let color = UIColor.red
let isLight = color.isLight // false
```

### ENG

This will determine that the color of the "color" variable is dark. If the color were light, the "isLight" variable would take on the value of true.
### TR
Bu şekilde, "color" değişkeninin renginin koyu olduğu anlaşılmış olur. Eğer renk açık olsaydı, "isLight" değişkeni true değerini alırdı.
