import multiprocessing
import time


def square():
    for i in range(5):
        time.sleep(1)
        print(f"Square of {i} is : {i*i}")


def cube():
    for i in range(5):
        time.sleep(1)
        print(f"Cube of {i} is : {i*i*i}")


if __name__ == "__main__":
    # Create 2 process
    p1 = multiprocessing.Process(target=square)
    p2 = multiprocessing.Process(target=cube)
    t = time.time()

    # Start the process
    p1.start()
    p2.start()

    # Wait for the process to complete
    p1.join()
    p2.join()

    final_time = time.time() - t
    print(final_time)
