#!/usr/bin/env python3
import os
import sys

def print_tree(dir_path, prefix=""):
    """
    Recursively prints a tree of files and directories under dir_path.
    prefix is the indentation + branch characters from higher levels.
    """
    try:
        entries = sorted(os.listdir(dir_path))
    except PermissionError:
        print(prefix + "└── [Permission Denied]")
        return

    # Build a list of prefix pointers: ├── for all but last, └── for the last entry
    pointers = ['├── '] * (len(entries) - 1) + ['└── '] if entries else []

    for pointer, entry in zip(pointers, entries):
        path = os.path.join(dir_path, entry)
        print(prefix + pointer + entry)
        if os.path.isdir(path):
            # For further recursion, extend the prefix:
            # use "│   " if there are siblings after this node, else "    "
            extension = "│   " if pointer.startswith('├') else "    "
            print_tree(path, prefix + extension)

if __name__ == "__main__":
    root = sys.argv[1] if len(sys.argv) > 1 else "."
    # Print the root itself, then its children
    print(root)
    print_tree(root)
