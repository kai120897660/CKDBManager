//
//  TestMdeol.swift
//  DBManager
//
//  Created by 陈凯文 on 2019/9/19.
//  Copyright © 2019 陈凯文. All rights reserved.
//

import UIKit

class TestModel: CKDBManager {

    required init() {
        
    }
    
    var name = "张三"
    
    var age = 18
    
    static func ck_tableName() -> String {
        return "Test"
    }
}
