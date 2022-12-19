# Lighten Color (Way 1)

```swift
import UIKit

extension UIColor {
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
}
```

## Usage

### ENG

This method allows you to lighten the color of any UIColor object by a specified factor. For example:

### TR

Bu extension sayesinde, herhangi bir UIColor nesnesine "lighten" metodunu eklemiş olursunuz. Bu metodu kullanarak, o nesnenin rengini belirli bir oranda açıklatabilirsiniz. Örneğin:

```swift
let color = UIColor.red
let lighterColor = color.lighten(by: 0.5)
```

### ENG

This will lighten the color of the "color" variable by half. If the "factor" value is 1.0, the color will become fully white. If the "factor" value is 0.0, the color will not change.

### TR

Bu şekilde, "color" değişkeninin rengi yarısı kadar açıklatılmış olur. Eğer "factor" değeri 1.0 olursa, renk tamamen beyaza döner. Eğer "factor" değeri 0.0 olursa, renk değişmez.

# Lighten Color (Way 2)

```swift
import UIKit

extension UIColor {
    func lighter(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjustBrightness(by: abs(percentage))
    }
}

```

## Usage

### ENG

With this extension, you can add the "lighter" method to any UIColor object. You can use this method to lighten the color of the object by a specific percentage. For example:

### TR

Bu extension sayesinde, herhangi bir UIColor nesnesine "lighter" metodunu eklemiş olursunuz. Bu metodu kullanarak, o nesnenin rengini belirli bir oranda açıklatabilirsiniz. Örneğin:

```swift
let color = UIColor.red
let lighterColor = color.lighter()

```

### ENG

In this way, the color of the "color" variable is lightened by a default of 30%. If you want to use a different percentage, you can change the "percentage" value. For example:

### TR

Bu şekilde, "color" değişkeninin rengi varsayılan olarak %30 oranında açıklatılmış olur. Eğer farklı bir oran kullanmak isterseniz, "percentage" değerini değiştirebilirsiniz. Örneğin:

```swift
let lighterColor = color.lighter(by: 50.0)


```

### ENG

In this way, the color of the "color" variable is lightened by 50%.

### TR

Bu şekilde, "color" değişkeninin rengi %50 oranında açıklatılmış olur.
