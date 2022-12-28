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
}