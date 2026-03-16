import re

def tokenize(sentence):
    lower_text = sentence.lower()

    new_text = re.sub(r'[^a-z0-9]', ' ', lower_text)
    splitted = new_text.split()
    return splitted
