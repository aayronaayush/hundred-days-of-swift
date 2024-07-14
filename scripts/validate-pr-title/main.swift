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

func main() {
    let title = CommandLine.arguments[1]

    if validateTitle(title) {
        print("PR Title is: [\(title)]")
    } else {
        print("PR Title Doesn't match the pattern")
        print("Please follow the pattern: Day <day_number> | <description>")
        exit(1)
    }
}

main()