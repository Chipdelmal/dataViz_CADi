"""
Hello Python!
"""
# Get Current Working Directory
import os
cwd = os.getcwd()
cwd

print("Hello World!")

# List operations: https://docs.python.org/3/tutorial/datastructures.html
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.count("apple")
fruits.index('banana')

# Dictionaries
tel = {'jack': 4098, 'sape': 4139}
tel["jack"]

tel['irv'] = 4127
tel

list(tel)

for i, v in enumerate(['tic', 'tac', 'toe']):
    print(i, v)


questions = ['name', 'quest', 'favorite color']
answers = ['lancelot', 'the holy grail', 'blue']
for q, a in zip(questions, answers):
    print('What is your {0}?  It is {1}.'.format(q, a))
