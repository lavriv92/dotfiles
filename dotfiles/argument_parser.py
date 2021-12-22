import argparse

from .enums import Operation


class DotfilesArgsParser(argparse.ArgumentParser):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.add_argument('operation', type=Operation, choices=list(Operation))

