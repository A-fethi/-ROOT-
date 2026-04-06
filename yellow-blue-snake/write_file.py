def to_do(tasks):
    with open('output.txt', 'w') as file:
        for date, task in tasks:
            formatted_date = date.strftime('%A %d %B %Y')

            line = f"{formatted_date}: {task}\n"
            
            file.write(line)