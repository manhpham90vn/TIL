# print to stdout
# python basic.py
print('hello')

# Text Type: str
# Numeric Types: int, float, complex
# Sequence Types: list, tuple, range
# Mapping Type:	dict
# Set Types: set, frozenset
# Boolean Type: bool
# Binary Types: bytes, bytearray, memoryview
# None Type: NoneType

x = "Hello"
print(type(x))
x = 1
print(type(x))
x = True
print(type(x))
x = [1, 2, 3]
print(type(x))

# create variable
name = 'Manh'
print(name)

# python is dynamic type
name = 1
name = 'Manh'

# string indexed và slicing
print(name[0])
print(name[0:3])
print(name[2:])

# string method
print(name.upper())
print(name.split('a'))

# print with format
print('this is string {}'.format(name))
print(f'Hello {name}')

# create list
arrs = [1, 3, 2, 4]
print(len(arrs))
arrs.append(5)
print(arrs)
arrs.sort()
print(arrs)

# dictionaries
dict = {
    'name': 'Manh',
    'age': 33,
    'family': [
        {
            'name': 'Ngan'
        }, 
        {
            'name': 'Nhat'
        },
        {
            'name': 'Linh'
        }
    ]
}
print(dict)
print(type(dict))
print(dict['age'])

# tuples
t = (1, 2, 3)
print(type(t))
print(t[0])

# set
s = set()
s.add(1)
s.add(2)
print(s)

# boolean
print(True)

# io
# write file
with open('/tmp/test.txt', mode='w') as f:
    f.write('test')

# read file
with open('/tmp/test.txt', mode='r') as f:
    print(f.read())

# comparison operators
# == :Equal => x == y
# != :Not equal => x != y
# > :Greater than => x > y
# < :Less than => x < y
# >= :Greater than or equal to => x >= y
# <= :Less than or equal to => x <= y

# logical operators
# and
# or
# not
print(1 < 2 and 2 > 3)
print(1 == 1 or 2 == 3)
print(not 1 == 1)

# statements
# if else
if True:
    print('True')
elif False:
    print('False')

# for
arrs = [1, 2, 3, 4, 5]
for e in arrs:
    print(e)

for e, i in enumerate(arrs):
    print(e, i)

# while
# break
# continue
# pass
x = 0
while x < 5:
    print(x)
    x += 1

# range
for e in range(10):
    print(e)

# list comprehensions
test = [f'{e}XXX' for e in 'Manh' if e is not '']
print(test)

list = [x + y for x in [1, 2, 3] for y in [4, 5, 6]]
print(list)