# HTML to Attributed Text

This extension converts a html content to attributed text.

```swift
extension UITextView {
    func setHTML(from htmlString: String) {
        if let htmlData = htmlString.data(using: String.Encoding.unicode) {
            do {
                let attributedString = try NSAttributedString(data: htmlData, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
                self.attributedText = attributedString
            } catch {
                print(error)
            }
        }
    }
```

### Usage

```swift
let htmlString = "<html><body><h1>Hello, World!</h1></body></html>"
let textView = UITextView()
textView.setHTML(from: htmlString)
```
