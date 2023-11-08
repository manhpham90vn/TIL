class Person():

    test = 1

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def say(self):
        print(f'name {self.name} age {self.age}')

manh = Person('Manh', 32)
manh.say()

class Enginee(Person):
    def __init__(self, name, age):
        super().__init__(name, age)

    def __str__(self):
        return f'{self.name} {self.age} {self.test}'

manh = Enginee('Nhat', 33)
manh.say()
print(manh)

if __name__ == "__main__":
    print("main")
else:
    print("not main")