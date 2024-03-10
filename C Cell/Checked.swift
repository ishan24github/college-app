//
//  Checked.swift
//  C Cell
//
//  Created by Ishan Arora on 17/11/19.
//  Copyright © 2019 Ishan Arora. All rights reserved.
//

import Foundation
import CoreData

public class Checked : NSManagedObject, Identifiable{
    @NSManaged public var checked : Bool
    @NSManaged public var name : String? 
}
extension Checked{
    static func getdata() ->NSFetchRequest<Checked>{
        let request:NSFetchRequest<Checked> = Checked.fetchRequest() as! NSFetchRequest<Checked>
        let sortDescriptor = NSSortDescriptor(key: "name" ,ascending : true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
