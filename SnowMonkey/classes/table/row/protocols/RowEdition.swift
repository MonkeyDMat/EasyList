//
//  RowEdition.swift
//  EasyList
//
//  Created by mathieu lecoupeur on 19/03/2019.
//  Copyright © 2019 mathieu lecoupeur. All rights reserved.
//

import UIKit

@objc public protocol RowEdition {
    @objc optional func isEditable() -> Bool
    @objc optional func getEditingStyle() -> UITableViewCell.EditingStyle
    @objc optional func getTitleForDeleteConfirmation() -> String?
}

protocol RowEditionProvider: class {
    associatedtype ReturnType
    
    var _editable: ((RowType) -> Bool)? { get set }
    var _editingStyle: ((RowType) -> UITableViewCell.EditingStyle)? { get set }
    var _titleForDeleteConfirmation: ((RowType) -> String?)? { get set }
}
