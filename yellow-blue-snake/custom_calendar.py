days = {
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday',
    7: 'Sunday'
}

def day_from_number(day_number):
    if day_number in days:
        return days[day_number]
    return None

def day_to_number(day):
    for number, name in days.items():
        if name == day:
            return number
    return None
