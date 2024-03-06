#write a python program to check given number prime or not


_input = int(input('enter'))
if _input%2 ==1 or _input%_input ==1:
    print('prime')
else:
    print('not a prime ')
#
# def is_prime(number):
#     if number