# /// script
# requires-python = ">=3.13"
# dependencies = []
# ///

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


def create_folders_for_iteration(iteration: str) -> None:
    for fol in FOLDERS:
        new_fol = os.path.join("iterations", iteration, fol)
        if not os.path.exists(new_fol):
            os.makedirs(new_fol)


def create_folders() -> None:
    args = sys.argv[1:]
    if len(args) == 0:
        print(
            "Creating folder structure 'test_iteration'...\n"
            f"\n{'*' * 79}\n"
            "If you would like to provide other iteration identifier(s), please use:\n"
            "\tcreate_folder_structure.py iter_identifier_1 [iter_identifier_2 ...]\n"
            f"{'*' * 79}"
        )
        create_folders_for_iteration("test_iteration")
    else:
        for i in args:
            print(f"Creating folder structure for iteration identifier '{i}'...", end=" ")
            create_folders_for_iteration(i)
            print("Done!")


if __name__ == "__main__":
    create_folders()
