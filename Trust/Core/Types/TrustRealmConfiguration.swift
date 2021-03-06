// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import RealmSwift

struct RealmConfiguration {

    static func configuration(for account: Account, chainID: Int) -> Realm.Configuration {
        var config = Realm.Configuration()
        config.fileURL = config.fileURL!.deletingLastPathComponent().appendingPathComponent("\(account.address.address)-\(chainID).realm")
        return config
    }
}
