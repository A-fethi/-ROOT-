import json

def get_recipes(file_name):
    with open("recipes_data.json", "r") as file:
        content = file.read()
        return json.loads(content)
