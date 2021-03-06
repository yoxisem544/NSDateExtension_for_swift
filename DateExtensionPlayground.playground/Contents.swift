//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension NSDate {
	
	var daysInItsMonth: Int {
		return NSCalendar.currentCalendar().rangeOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Month, forDate: self).length
	}
	
	var tomorrow: NSDate? {
		let component = NSCalendar.currentCalendar().components([.Year, .Month, .Day, .Hour], fromDate: self)
		component.day += 1
		return NSCalendar.currentCalendar().dateFromComponents(component)
	}
	
	var yesterday: NSDate? {
		let component = NSCalendar.currentCalendar().components([.Year, .Month, .Day, .Hour], fromDate: self)
		component.day -= 1
		return NSCalendar.currentCalendar().dateFromComponents(component)
	}
	
	var beginingDateOfItsMonth: NSDate? {
		let component = NSCalendar.currentCalendar().components([.Year, .Month, .Day, .Hour], fromDate: self)
		component.day = 1
		return NSCalendar.currentCalendar().dateFromComponents(component)
	}
	
	var endDateOfItsMonth: NSDate? {
		let component = NSCalendar.currentCalendar().components([.Year, .Month, .Day, .Hour], fromDate: self)
		component.month += 1
		component.day = 0
		return NSCalendar.currentCalendar().dateFromComponents(component)
	}
	
	var weekday: Int {
		// will return from 1 ~ 7
		// 1 is sunday
		// 7 is saturday
		// sun mon tue wen thu fri sat
		//  1	2	3	4	5	6	7
		return NSCalendar.currentCalendar().component(NSCalendarUnit.Weekday, fromDate: self)
	}
	
	var year: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Year, fromDate: self).year
	}
	
	var month: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Month, fromDate: self).month
	}
	
	var day: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Day, fromDate: self).day
	}
	
	var hour: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Hour, fromDate: self).hour
	}
	
	var minute: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Minute, fromDate: self).minute
	}
	
	var second: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Second, fromDate: self).second
	}
	
	func dateByAddingYear(year: Int) -> NSDate? {
		let components = NSDateComponents()
		components.year = NSIntegerMax
		components.month = NSIntegerMax
		components.weekOfYear = NSIntegerMax
		components.day = NSIntegerMax
		components.year = year
		return NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self, options: [])
	}
	
	func dateBySubtractingYear(year: Int) -> NSDate? {
		return self.dateByAddingYear(-year)
	}
	
	func dateByAddingMonth(month: Int) -> NSDate? {
		let components = NSDateComponents()
		components.year = NSIntegerMax
		components.month = NSIntegerMax
		components.weekOfYear = NSIntegerMax
		components.day = NSIntegerMax
		components.month = month
		return NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self, options: [])
	}
	
	func dateBySubtractingMonth(month: Int) -> NSDate? {
		return self.dateByAddingMonth(-month)
	}
	
	func dateByAddingWeek(week: Int) -> NSDate? {
		let components = NSDateComponents()
		components.year = NSIntegerMax
		components.month = NSIntegerMax
		components.weekOfYear = NSIntegerMax
		components.day = NSIntegerMax
		components.weekOfYear = week
		return NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self, options: [])
	}
	
	func dateBySubtractingWeek(week: Int) -> NSDate? {
		return self.dateByAddingWeek(-week)
	}
	
	func dateByAddingDay(day: Int) -> NSDate? {
		let components = NSDateComponents()
		components.year = NSIntegerMax
		components.month = NSIntegerMax
		components.weekOfYear = NSIntegerMax
		components.day = NSIntegerMax
		components.day = day
		return NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self, options: [])
	}
	
	func dateBySubtractingDay(day: Int) -> NSDate? {
		return self.dateByAddingDay(-day)
	}
}

let now = NSDate()

now.second
now.minute
now.hour
now.day
now.weekday
now.month
now.year

now.tomorrow
now.yesterday

now.daysInItsMonth
now.beginingDateOfItsMonth
now.endDateOfItsMonth

now.dateByAddingDay(10)
now.dateBySubtractingDay(37)

now.dateByAddingWeek(2)
now.dateBySubtractingWeek(8)

now.dateByAddingMonth(2)
now.dateBySubtractingMonth(1)

now.dateByAddingYear(3)
now.dateBySubtractingYear(1)


