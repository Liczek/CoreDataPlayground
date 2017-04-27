//
//  Person+CoreDataProperties.swift
//  CoreDataPlayground
//
//  Created by Paweł Liczmański on 27.04.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person");
    }

    @NSManaged public var address: String?
    @NSManaged public var age: Int16
    @NSManaged public var eyeColor: NSObject?
    @NSManaged public var friendImage: NSData?
    @NSManaged public var name: String

}
