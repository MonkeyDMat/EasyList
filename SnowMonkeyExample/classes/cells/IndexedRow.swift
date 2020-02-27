//
//  IndexedRow.swift
//  EasyListExample
//
//  Created by mathieu lecoupeur on 19/03/2019.
//  Copyright © 2019 mathieu lecoupeur. All rights reserved.
//

import Foundation

public class IndexedRow: Row<Int, IndexedCell> {
    
    var rowIndex: Int
    
    public init(index: Int) {
        self.rowIndex = index
        super.init(id: "Row\(rowIndex)", data: index, cellIdentifier: nil) { (cell, data) in
            cell.textLabel?.text = "CELL \(index)"
        }
    }
}
