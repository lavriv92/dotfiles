import logging
from pathlib import Path

from dotfiles.enums import Operation
from dotfiles.exceptions import UnsuppertedOperation
from dotfiles.actions import link_vimfiles

logger = logging.getLogger(__name__)

BASE_SOUCE_PATH = Path.cwd()


class DotfilesRunner(object):
    def __init__(self, command):
        self.command = command

    @property
    def operation(self):
        if self.command == Operation.SETUP:
            return self.setup_dotfiles
        elif self.command == Operation.CLEAR:
            return self.clear_dotfiles
        elif self.command == Operation.BACKUP:
            return self.backup_dotfiles
        else:
            raise UnsuppertedOperation('Unsupperted operation for dotfiles')

    def setup_dotfiles(self):
        logger.info('Dotfiles run')
        link_vimfiles()

    def clear_dotfiles(self):
        logger.info('Clear dotfiles')

    def backup_dotfiles(self):
        logger.info('Backup dotfiles')
