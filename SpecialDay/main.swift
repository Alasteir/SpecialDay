typealias DateTuple = (day: Int, month: Int, year: Int)

typealias Event = (name: String, date: DateTuple)




let currentDate = (day: 15, month: 3, year: 2024)
let tomorow = (day: currentDate.day + 1, month: currentDate.month, year: currentDate.year)

var events : [Event] = [
    ("День народження", (day: 15, month: 3, year: 2024)),
    ("Зустріч з другом", (day: 16, month: 3, year: 2024)),
    ("New Year", (day: 15, month: 3, year: 2024))]

func compareDates(date1: DateTuple, date2: DateTuple) -> Bool {
    return date1 == date2
}

for event in events {
    if compareDates(date1: event.date,  date2: currentDate) {
        print("Сьогодні: \( event.name )")
    }
}



for event in events {
    if  event.date == tomorow {
        print("Завтра: \(event.name)")
    }
}
    
