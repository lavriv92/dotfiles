import os
import functools
import logging
import shutil

logger = logging.getLogger(__name__)

def action(source, target):
    def inner(func):
        @functools.wraps(func)
        def wrapper():
            if os.path.exists(target):
                logger.info(f"Removing vim config at path {target}")
                shutil.rmtree(target)

                logger.info(f"Recreating target path {target}")
                os.mkdir(target)

            res = func(source, target)
            return res

        return wrapper

    return inner
