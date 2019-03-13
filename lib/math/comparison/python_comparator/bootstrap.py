from helpers.parameters import Parameters
from controller import Controller

class Bootstrap(object):

    def load_params(self, params):
        self.__params = Parameters(params)
        return self

    def exec(self):
        controller = Controller(self.__params)
        print(controller.run_comparison())
