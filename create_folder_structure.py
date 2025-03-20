import os
import sys

FOLDERS = [
    "results",
    "reports",
    os.path.join("source_data", "instances"),
    os.path.join("source_data", "holdings"),
    os.path.join("source_data", "items"),
    os.path.join("source_data", "users"),
    os.path.join("source_data", "loans"),
    os.path.join("source_data", "courses"),
]


def create_fol(iteration: str) -> None:
    for fol in FOLDERS:
        new_fol = os.path.join("iterations", iteration, fol)
        if not os.path.exists(new_fol):
            os.makedirs(new_fol)


if __name__ == "__main__":
    args = sys.argv[1:]
    if len(args) == 0:
        raise ValueError("Provide an iteration name")
    for i in args:
        create_fol(i)
