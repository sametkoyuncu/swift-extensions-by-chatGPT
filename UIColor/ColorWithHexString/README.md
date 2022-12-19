# Color With Hex String

```swift
import UIKit
extension UIColor {
    static func colorWithHexString(hex: String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
```

## Usage

```swift
let color = UIColor.Swift dilinde bir UIColor için extension yazmak, UIColor sınıfına özel özellikler veya metodlar eklemek için kullanılır. Bu sayede, UIColor sınıfının özelliklerini ve metodlarını genişleterek, kodunuzu daha kolay ve okunaklı hale getirebilirsiniz.
```

## ENG

This extension converts a hexadecimal color code input into a UIColor object. For example, the call "ç" creates a UIColor object with the color red.

This is a Swift extension that adds a method to the UIColor class and converts a hexadecimal color code to a UIColor object. In this extension, a parameter is defined for the hexadecimal color code and it is named as "hex". Then, a variable called "cString" is defined and it contains the color code passed through the "hex" parameter. The "#" symbol at the beginning of the color code is removed and if the color code is not 6 characters long, the UIColor.gray object is returned.
Then, a variable called "rgbValue" is defined and it contains the hexadecimal value of the color code. This variable is read as a hexadecimal number using the Scanner class.
Finally, a UIColor object is created based on the values of the "rgbValue" variable. This object is created based on the red, green, blue, and alpha values and these values are calculated based on the values of the "rgbValue" variable. This object is then returned.

## TR

Bu extension, bir hexadecimal renk kodu girdiğinizde, bu kodu UIColor nesnesine çevirir. Örneğin, "colorWithHexString(hex: "#FF0000")" çağrısı, kırmızı renkli bir UIColor nesnesi oluşturur.

Bu Swift dilinde yazılmış bir extension'dır. Extension, bir sınıfın veya yapının mevcut özelliklerine ve metotlarına yeni özellikler ve metotlar eklemek için kullanılır. Bu extension, UIColor sınıfına bir metot ekler ve bu metot, bir hexadecimal renk kodu alır ve bu kodu UIColor nesnesine çevirir.
Bu extension'da, ilk olarak hexadecimal renk kodu için bir parametre tanımlanır ve bu parametre hex olarak adlandırılır. Daha sonra, cString adında bir değişken tanımlanır ve bu değişken, hex parametresinden gelen renk kodunu içerir. Renk kodunun başında bulunan "#" işareti kaldırılır ve eğer renk kodu 6 haneli değilse, UIColor.gray nesnesi döndürülür.
Sonra, rgbValue adında bir değişken tanımlanır ve bu değişken, renk kodunun hexadecimal sayı olarak değerini içerir. Bu değişken, Scanner sınıfı kullanılarak hexadecimal sayı olarak okunur.
Son olarak, UIColor nesnesi oluşturulur ve bu nesne, rgbValue değişkeninin değerlerine göre oluşturulur. Bu nesne, red, green, blue ve alpha değerlerine göre oluşturulur ve bu değerler, rgbValue değişkeninin değerlerine göre hesaplanır. Bu nesne son olarak döndürülür.
