//
//  CollectionExtensions.swift
//  EasyList
//
//  Created by Red10 on 14/06/2019.
//  Copyright © 2019 mathieu lecoupeur. All rights reserved.
//

import Foundation

protocol OptionalType {
    associatedtype Wrapped
    func map<U>(_ f: (Wrapped) throws -> U) rethrows -> U?
}

extension Optional: OptionalType {}

extension Sequence where Iterator.Element: OptionalType {
    func removeNils() -> [Iterator.Element.Wrapped] {
        var result: [Iterator.Element.Wrapped] = []
        for element in self {
            if let element = element.map({ $0 }) {
                result.append(element)
            }
        }
        return result
    }
}
