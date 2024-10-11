import os
import sys

create_fols = [
    "results",
    "reports",
    "source_data/instances",
    "source_data/holdings",
    "source_data/items",
    "source_data/users",
    "source_data/loans",
    "source_data/courses",
]


def create_fol(iteration):
    for fol in create_fols:
        new_fol = os.path.join("iterations", iteration, fol)
        if not os.path.exists(new_fol):
            os.makedirs(new_fol)


if __name__ == "__main__":
    args = sys.argv[1:]
    if len(args) == 0:
        raise ValueError("Provide an iteration name")
    for i in args:
        create_fol(i)
