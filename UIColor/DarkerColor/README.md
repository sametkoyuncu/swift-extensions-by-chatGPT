# Darker Color

```swift
import UIKit

extension UIColor {
    func darker(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjustBrightness(by: -abs(percentage))
    }
}

```

## Usage

### ENG

With this extension, you can add the "darker" method to any UIColor object. You can use this method to darken the color of the object by a specific percentage. For example:

### TR

Bu extension sayesinde, herhangi bir UIColor nesnesine "darker" metodunu eklemiş olursunuz. Bu metodu kullanarak, o nesnenin rengini belirli bir oranda koyulaştırabilirsiniz. Örneğin:

```swift
let color = UIColor.red
let lighterColor = color.darker()
```

### ENG

In this way, the color of the "color" variable is darkened by a default of 30%. If you want to use a different percentage, you can change the "percentage" value. For example:

### TR

Bu şekilde, "color" değişkeninin rengi varsayılan olarak %30 oranında koyulaştırılmış olur. Eğer farklı bir oran kullanmak isterseniz, "percentage" değerini değiştirebilirsiniz. Örneğin:

```swift
let darkerColor = color.darker(by: 50.0)
```

### ENG

In this way, the color of the "color" variable is darkened by 50%.

### TR

Bu şekilde, "color" değişkeninin rengi %50 oranında koyulaştırılmış olur.
