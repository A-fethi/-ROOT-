def do_punishment(first_part, second_part, nb_lines):
    str1 = first_part.strip()
    str2 = second_part.strip()

    result = (str1 + " " + str2 + ".\n") * nb_lines
    return result
