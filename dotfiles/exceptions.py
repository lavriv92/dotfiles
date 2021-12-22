class BaseDotfilesException(Exception):
    pass


class UnsuppertedOperation(BaseDotfilesException):
    pass


class HandlingActionError(BaseDotfilesException):
    pass
