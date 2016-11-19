//
// Copyright (C) 2016-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
    
    

import UIKit
import TooLegit
import CoreData
import SoPersistent
import SoLazy

let pageKitModelName = "PageKit"
let pageKitStoreName = "PageKit"

extension Session {
    func pagesManagedObjectContext() throws -> NSManagedObjectContext {
        guard let model = NSManagedObjectModel(named: pageKitModelName, inBundle: NSBundle(forClass: Page.self))?.mutableCopy() as? NSManagedObjectModel else {
            ❨╯°□°❩╯⌢"Could not load Page model in Session+Page extension"
        }
        
        let storeID = StoreID(storeName: pageKitStoreName, model: model, localizedErrorDescription: NSLocalizedString("There was a problem loading the Pages database file.", tableName: "Localizable", bundle: NSBundle(identifier: "com.instructure.PageKit")!, value: "", comment: "Page list fails"))
        
        return try managedObjectContext(storeID)
    }
}
