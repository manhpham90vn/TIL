def add(num1, num2):
    try:
        result = num1 + num2
        return result
    except TypeError:
        print('Have error')
    finally:
        print('Always run')

if __name__ == '__main__':
    print(add(1, 2))
    print(add(1, '2'))