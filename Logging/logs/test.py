from logger import logging


def add(a, b):
    logging.debug("Addition operation has taken place.")
    return a + b


logging.debug("Addition function has been called.")
add(3, 4)
