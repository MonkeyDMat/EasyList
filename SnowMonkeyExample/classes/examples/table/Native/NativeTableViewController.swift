//
//  NativeViewController.swift
//  EasyListExample
//
//  Created by mathieu lecoupeur on 22/07/2018.
//  Copyright © 2018 mathieu lecoupeur. All rights reserved.
//

import UIKit

class NativeTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: TableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tableView = tableView else {
            return
        }
        
        let source = TableSource(tableView: tableView)
        source.setRowSelectionStyle { (_) -> UITableViewCell.SelectionStyle in
            return .none
        }
        
        let section = TableSection<NativeHeader, NativeFooter>(header: NativeHeader(title: "Native Header"),
                                                          footer: NativeFooter(title: "Native Footer"))
        
        source.addSection(section)
            .addRow(NativeRow(id: "subtitle", text: "Style subtitle", detail: "subtitle", style: .subtitle))
            .addRow(NativeRow(id: "value1", text: "Style value 1", detail: "value 1", style: .value1))
            .addRow(NativeRow(id: "value2", text: "Style value 2", detail: "value 2", style: .value2))
            
        for i in 1...30 {
            section.addRow(NativeRow(id: "row\(i)", text: "Native Row " + NSNumber(value: i).stringValue))
        }
    }
}
