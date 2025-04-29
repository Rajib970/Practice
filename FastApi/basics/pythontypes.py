def add(firstname:str | None, lastname:str = None):
    firstname.capitalize()
    return firstname+ " "+lastname


x = add('Rajib','Shaw')