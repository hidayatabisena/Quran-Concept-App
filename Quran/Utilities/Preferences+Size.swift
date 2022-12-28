//
//  Preferences+Size.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import SwiftUI

// MARK: - HELPER
public extension View {
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}

/// PreferenceKey for a subview to notify superview of its size
struct SizePreferenceKey: PreferenceKey {
    public typealias Value = CGSize
    public static var defaultValue: Value = .zero

    public static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}

struct BackgroundGeometryReader: View {
    public init() {}
    
    public var body: some View {
        GeometryReader { geometry in
            return Color
                .clear
                .preference(key: SizePreferenceKey.self, value: geometry.size)
        }
    }
}


/// A helper ViewModifier to attach to the subview that encapsulates the PreferenceKey
public struct SizeAwareViewModifier: ViewModifier {

    @Binding private var viewSize: CGSize

    public init(viewSize: Binding<CGSize>) {
        self._viewSize = viewSize
    }

    public func body(content: Content) -> some View {
        content
            .background(BackgroundGeometryReader())
            .onPreferenceChange(SizePreferenceKey.self) {
                self.viewSize = $0
            }
    }
}
