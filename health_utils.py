def calculate_bmi(weight, height):
    return weight / (height * height)


def calculate_bmr(weight, height, age, gender):
    if gender == "male":
        bmr = 88.362 + (weight * 13.397) + (height * 4.799) - (age * 5.677)
    else:
        bmr = 447.593 + (weight * 9.247) + (height * 3.093) - (age * 4.330)
    return bmr
