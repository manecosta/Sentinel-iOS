//
//  WalletTransaction.swift
//  Sentinel
//
//  Created by Farzad Nazifi on 03.06.18.
//  Copyright © 2018 Samourai. All rights reserved.
//

import RealmSwift

class WalletTransaction: Object {
    @objc dynamic var conf = 0
    @objc dynamic var time = 0
    @objc dynamic var value = 0
    @objc dynamic var txid = ""
    @objc dynamic var wallet: Wallet? = nil
    
    override static func primaryKey() -> String? {
        return "txid"
    }
    
    func status() -> String {
        if conf < 3 {
            return "Pending \(conf)/3"
        }
        return "Confirmed"
    }
}