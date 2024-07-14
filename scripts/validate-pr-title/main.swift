import Foundation

enum ValidationError: Error {
    case invalidTitle
}

func validateTitle(_ title: String) -> Bool {
    let pattern = "^Day \\d+ \\| .+$"
    let regex = try! NSRegularExpression(pattern: pattern)
    let range = NSRange(location: 0, length: title.utf16.count)
    return regex.firstMatch(in: title, options: [], range: range) != nil
}

// Example usage
let title = "Day 1 | Description"
if validateTitle(title) {
    print("Valid string")
} else {
    print("PR Title Doesn't match the pattern")
    print("Please follow the pattern: Day <day_number> | <description>")
    throw ValidationError.invalidTitle
    
}