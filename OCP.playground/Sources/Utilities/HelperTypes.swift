import Foundation
import SwiftUI

public struct PrintStyle {
    public let titleFont: Font
    
    public init(titleFont: Font) {
        self.titleFont = titleFont
    }    
}

public struct PDF {
    public var title: String?
    public var titleFont: Font?
    public var subtitle: String?
    public func set(backgroundImage: Image) {}
    public func add(line: String) {}
    
    public init(title: String? = nil, titleFont: Font? = nil, subtitle: String? = nil) {
        self.title = title
        self.titleFont = titleFont
        self.subtitle = subtitle
    }
}
