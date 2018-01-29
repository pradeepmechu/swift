//
//  HomeDatasource.swift
//  TwitterApp
//
//  Created by Pradeep Kumar on 01/02/2017.
//  Copyright © 2017 Pradeep Kumar. All rights reserved.
//

import LBTAComponents


class HomeDatasource: Datasource {
    let words = ["user1", "user2", "user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    override func numberOfItems(_ section: Int) -> Int {
        
        return words.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        
        return [UserCell.self]
    }
}
