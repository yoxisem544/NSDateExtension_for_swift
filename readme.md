# NSDate Extension
讓 NSDate 更方便使用的一些擴展

因為 NSDate 實在是非常不方便，而且這一陣子公司案子要做行事曆，於是參考了一些資源，然後整理出來的。

## 可以直接取到某個 date 的年、月、日、時間等等
```swift
let now = NSDate()

now.second
now.minute
now.hour
now.day
now.weekday
now.month
now.year
```

## 可以取得明天以昨天的 date
```swift
let now = NSDate()

now.tomorrow
now.yesterday
```

## 可以取得一個月之中共有幾天
```swift
let now = NSDate()
now.daysInItsMonth
```

## 可以取得一個月的開始與結束的 date
```swift
let now = NSDate()
now.beginingDateOfItsMonth
now.endDateOfItsMonth
```

## 可以加上時間位移，取得 date
```swift
let now = NSDate()

// 10 天後
now.dateByAddingDay(10)
// 37 天前
now.dateBySubtractingDay(37)

// 2 週後
now.dateByAddingWeek(2)
// 8 週前
now.dateBySubtractingWeek(8)

// 2 月後
now.dateByAddingMonth(2)
// 1 月前
now.dateBySubtractingMonth(1)

// 3 年後
now.dateByAddingYear(3)
// 1 年前
now.dateBySubtractingYear(1)
```

## TODO
陸續增加方法中....