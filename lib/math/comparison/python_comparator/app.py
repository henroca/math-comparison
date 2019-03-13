import sys
from bootstrap import Bootstrap

bootstrap = Bootstrap()

bootstrap.load_params(sys.argv).exec()
