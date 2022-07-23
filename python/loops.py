# Import Libraries
import math

"""
Problem 1. Quadratic Equation
"""
a = 3
b = -5.86
c = 2.5408
root1 = (-b - math.sqrt((b ** 2) - (4 * a * c))) / (2 * a)
root2 = (-b + math.sqrt((b ** 2) - (4 * a * c))) / (2 * a)
print("Root 1: ", root1)  # 0.6496431
print("Root 2: ", root2)  # 1.30369



"""
Problem 2. Decimal Representations
"""
for denom in range(2, 11, 1):
    print("1 /", denom, ":", float(1/denom))



"""
Problem 3. 10th Triangular Number
"""
n = 10
triangular = 0
for i in range(1, n + 1):
    triangular += i
print("Triangular number", n, "via loop:", triangular)
print("Triangular number", n, "via formula:", n * (n + 1) / 2)



"""
Problem 4. Compute Factorial of 10
"""
n = 10
factorial = 1
for i in range(1, n + 1):
    factorial = (factorial * i)
print(factorial)



"""
Problem 5. Print First 10 Factorials
"""
num_lines = 10
for num in range(num_lines, 0, -1):
    factorial = 1
    for i in range(1, num + 1):
        factorial = (factorial * i)
    print(factorial)



"""
Problem 6. For Loop Equation
"""
fractions = 10
value = 0
for num in range(0, fractions, 1):
    factorial = 1
    for i in range(1, num + 1):
        factorial = (factorial * i)
    value += 1/factorial
print(value)  # 2.718281801

