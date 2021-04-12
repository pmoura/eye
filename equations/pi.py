# See https://en.wikipedia.org/wiki/Pi

from sympy import N
from sympy import pi

if __name__ == "__main__":
    cases = [
        "N(pi, 10)",
        "N(pi, 50)",
        "N(pi, 246)"
    ]

    for c in cases:
        print("%s = %s" % (c, eval(c)))
    print("")
