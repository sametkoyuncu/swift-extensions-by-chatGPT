# Load From Nib Name

```swift
import UIKit
extension UIView {
    func loadFromNib(nibName: String) {
        let bundle = Bundle(for: type(of: self))
        if let view = bundle.loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView {
            addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
```

## ENG

This extension adds a method called 'loadFromNib' to the 'UIView' class. This method loads a '.xib' file with the given 'nibName' and adds its view to the current view.

For example, in the following code, a '.xib' file named 'ResultView' is loaded, and the view inside it is added to an instance of the 'ResultView' class called 'resultView':

(This extension can be useful when you want to reuse a specific view in multiple places, so you don't have to write the same repetitive loading code every time.)

## TR

Bu extension, 'UIView' sınıfına 'loadFromNib' adında bir metod ekler. Bu metod, belirtilen 'nibName' adına sahip olan bir '.xib' dosyasını yükler ve içindeki view'ı mevcut view'a ekler.

Örneğin, aşağıdaki kodda 'ResultView' adlı bir '.xib' dosyası yüklenir ve bu dosyadaki view, 'ResultView' adlı sınıfın örneği olan 'resultView''a eklenir:

(Bu extension, belirli bir view'ı birden fazla yerde kullanmak istediğinizde oldukça faydalı olabilir, böylece aynı tekrarlayan yüklemeyi her seferinde yazmak zorunda kalmazsınız.)

## Usage

```swift
class ResultView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        loadFromNib(nibName: "ResultView")
    }
}

let resultView = ResultView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
```
