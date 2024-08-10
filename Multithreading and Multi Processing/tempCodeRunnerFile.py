import multiprocessing
import math
import sys
import time

# Increase the maximum number of digits for integer coversion

sys.set_int_max_str_digits(100000)

# Function to compute dactorials of a given number


def compute_factorial(number):
    print(f"Computing dactorial of {number}")
    result = math.factorial(number)
    print(f"Factorial of {number} is {result}")
    print('\n')
    print('\n')
    return result


if __name__ == "__main__":
    numbers = [5000, 6000, 700, 8000]

    st = time.time()

    # Create a pool of worker processes
    with multiprocessing.Pool() as pool:
        results = pool.map(compute_factorial, numbers)

    et = time.time()

    print(f"Results : {results}")
    print(f"Time taked {et-st} seconds")
