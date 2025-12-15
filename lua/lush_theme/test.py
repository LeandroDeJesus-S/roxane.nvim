# Comment: This is a single line comment

"""
Multi-line string
used as docstring
"""

# Imports
import os
import sys
from collections import defaultdict, namedtuple
import json as js

# Constants
PI = 3.14159
VERSION = "1.0.0"
MAX_SIZE = 1000

# Global variables
global_var = 42
global_str = "hello world"

# Named tuple
Point = namedtuple("Point", ["x", "y"])


# Class definition
class Person:
    """A simple Person class."""

    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.address = None

    def __str__(self):
        return f"{self.name} ({self.age})"

    def greet(self):
        return f"Hello, I'm {self.name}"

    @property
    def is_adult(self):
        return self.age >= 18

    @classmethod
    def from_dict(cls, data):
        return cls(data["name"], data["age"])

    @staticmethod
    def validate_age(age):
        return isinstance(age, int) and age > 0


# Function definitions
def add(a, b):
    """Add two numbers."""
    return a + b


def multiply(*args):
    """Multiply multiple numbers."""
    result = 1
    for arg in args:
        result *= arg
    return result


def divide(a, b=1):
    """Divide a by b with default value."""
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b


# Lambda function
square = lambda x: x**2


# Generator function
def fibonacci(n):
    """Generate fibonacci sequence."""
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b


# Decorator
def timing_decorator(func):
    def wrapper(*args, **kwargs):
        import time

        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__} took {end - start:.2f} seconds")
        return result

    return wrapper


@timing_decorator
def slow_function():
    import time

    time.sleep(0.1)
    return "done"


# Main execution
if __name__ == "__main__":
    # Variable assignments
    x = 10
    y = 20.5
    z = "string"
    w = True

    # Data structures
    my_list = [1, 2, 3, 4, 5]
    my_tuple = (1, 2, 3)
    my_dict = {"a": 1, "b": 2, "c": 3}
    my_set = {1, 2, 3, 4}

    # List comprehension
    squares = [x**2 for x in range(10)]
    even_squares = [x**2 for x in range(10) if x % 2 == 0]

    # Dict comprehension
    square_dict = {x: x**2 for x in range(5)}
    filtered_dict = {k: v for k, v in my_dict.items() if v > 1}

    # Set comprehension
    square_set = {x**2 for x in range(10)}

    # Control structures
    if x > 5:
        print("x is greater than 5")
    elif x == 5:
        print("x equals 5")
    else:
        print("x is less than 5")

    # For loop
    for i, item in enumerate(my_list):
        print(f"Index {i}: {item}")

    # While loop
    counter = 0
    while counter < 5:
        counter += 1

    # Try-except-finally
    try:
        result = divide(10, 0)
    except ValueError as e:
        print(f"Error: {e}")
    except ZeroDivisionError:
        print("Division by zero")
    else:
        print(f"Result: {result}")
    finally:
        print("Cleanup code")

    # With statement (context manager)
    with open(__file__, "r") as f:
        content = f.read()
        print(f"File has {len(content)} characters")

    # String operations
    upper_str = z.upper()
    lower_str = z.lower()
    formatted = f"Value: {x}, String: {z}"

    # Raw string
    raw_string = r"This is a raw string\nwith backslashes"

    # Multi-line string
    multi_line = """
    This is a multi-line
    string with quotes "and"
    apostrophes 'here'
    """

    # Unicode string
    unicode_str = "Hello 世界 🌍"

    # Bytes
    byte_data = b"binary data"
    encoded = "hello".encode("utf-8")

    # Complex numbers
    complex_num = 3 + 4j
    real_part = complex_num.real
    imag_part = complex_num.imag

    # None type
    none_value = None

    # Assertions
    assert x > 0, "x must be positive"

    # Function calls
    sum_result = add(x, b=y)
    mult_result = multiply(1, 2, 3, 4)
    div_result = divide(10, 2)

    # Lambda usage
    squared = square(5)

    # Generator usage
    fib_nums = list(fibonacci(10))

    # Class instantiation
    person = Person("Alice", 30)
    print(person.greet())

    # Method calls
    is_adult = person.is_adult

    # JSON operations
    data = {"name": "Bob", "age": 25}
    json_str = js.dumps(data)
    parsed_data = js.loads(json_str)

    # File operations
    current_dir = os.getcwd()
    files = os.listdir(".")

    # System info
    python_version = sys.version

    print("Python syntax test completed")
