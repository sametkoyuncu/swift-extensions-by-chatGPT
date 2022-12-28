# HTML to Attributed Text

This extension converts a html content to attributed text.

```swift
extension String {
    func htmlAttributedString() -> NSAttributedString? {
        guard let data = self.data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
}

```

### Usage

```swift
let htmlString = "<html><body><h1>Hello, World!</h1></body></html>"
let attributedString = htmlString.htmlAttributedString()
```
