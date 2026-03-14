def clean_list(list_to_clean):
    if len(list_to_clean) == 0:
        return list_to_clean
    if 'milk' not in list_to_clean:
        list_to_clean.append('milk')
    cleaned = []
    for i, item in enumerate(list_to_clean):
        cleaned.append(f'{i + 1}/ {item.strip().capitalize()}')
    return cleaned
