import Foundation
import SwiftUI

public struct PrintStyle {
    public let titleFont: Font
    public let backgroundImage: Image?
    
    public init(titleFont: Font, backgroundImage: Image? = nil) {
        self.titleFont = titleFont
        self.backgroundImage = backgroundImage
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
