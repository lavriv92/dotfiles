import logging 
from dotfiles import DotfilesRunner, DotfilesArgsParser
from dotfiles.exceptions import BaseDotfilesException

logger = logging.getLogger(__name__)

def main():
    parser = DotfilesArgsParser()
    opts = parser.parse_args()
    runner = DotfilesRunner(opts.operation)

    runner.operation()

if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)

    try:
        main()
    except BaseDotfilesException as e:
        logger.error(e)

