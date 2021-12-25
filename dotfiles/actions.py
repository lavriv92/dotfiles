import os
import logging
from pathlib import Path
from .decorators import action

BASE_SOURCE_PATH = Path.cwd()
BASE_TARGET_PATH = Path.home()

logger = logging.getLogger(__name__)

@action(
    source=BASE_SOURCE_PATH / 'vim',
    target=BASE_TARGET_PATH / '.config/nvim'
)
def link_vimfiles(source: Path, target: Path):
    os.symlink(source / 'lua', target / 'lua')
    os.symlink(source / 'init.lua', target / 'init.lua')


@action(
    source=BASE_SOURCE_PATH,
    target=BASE_TARGET_PATH
)
def link_zsh(source: Path, target: Path):
    pass


@action(
    source=BASE_SOURCE_PATH,
    target=''
)
def link_git(_source, _target):
    pass


@action(
    source=BASE_SOURCE_PATH,
    target=BASE_TARGET_PATH
)
def link_gitconfig(source, target):
   pass


@action(
    source=BASE_SOURCE_PATH,
    target=''
)
def backup(source, target):
    pass


