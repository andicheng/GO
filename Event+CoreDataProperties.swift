//
//  Event+CoreDataProperties.swift
//  
//
//  Created by ANDERSON CHENG on 12/21/16.
//
//

import Foundation
import CoreData


extension Event {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Event> {
        return NSFetchRequest<Event>(entityName: "Event");
    }

    @NSManaged public var address: String?
    @NSManaged public var category: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var detail: String?
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var title: String?
    @NSManaged public var id: String?

}
