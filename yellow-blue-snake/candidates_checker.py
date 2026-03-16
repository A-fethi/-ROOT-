import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print('Error: wrong number of arguments')
        sys.exit(1)

    num = int(sys.argv[1])
    dictionary = []
    for _ in range(num):
        name = input('Add a new candidate:\nname: ')
        age = int(input('age: '))
        dictionary.append({"name": name, "age": age})

    for item in dictionary:
        name = item["name"]
        age = item["age"]

        if age < 18:
            print(f"{name} is not eligible (underaged)")
        elif age > 60:
            print(f"{name} is not eligible (over the legal age)")
        else:
            print(f"{name} is eligible")
