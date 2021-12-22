import enum


class Operation(enum.Enum):
    SETUP = 'setup'
    CLEAR = 'clean'
    BACKUP = 'backup'

    def __str__(self):
        return self.value
