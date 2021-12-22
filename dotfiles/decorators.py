import os
import functools
import logging
import shutil

from dotfiles.exceptions import HandlingActionError

logger = logging.getLogger(__name__)

def action(source=None, target=None):

    def inner(func):
        @functools.wraps(func)
        def wrapper():
            if source is None and target is None:
                raise HandlingActionError("Please provide source and target")

            if os.path.exists(target):
                logger.info(f"Removing vim config at path {target}")
                shutil.rmtree(target)

                logger.info(f"Recreating target path {target}")
                os.mkdir(target)

            res = func(source, target)
            return res

        return wrapper

    return inner
