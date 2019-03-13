from comparisons.default_comparison import DefaultComparison
from comparisons.equation_comparison import EquationComparison
from helpers.parameters import Parameters

class Controller(object):

    def __init__(self, params):
        self.__params = params

    def __default_comparison(self):
        comparasion = DefaultComparison(
            self.__params.get('first'),
            self.__params.get('second')
        )

        return comparasion.compare()

    def __equation_comparison(self):
        comparasion = EquationComparison(
            self.__params.get('first'),
            self.__params.get('second')
        )

        return comparasion.compare()

    def run_comparison(self):
        if (self.__params.get('type') == Parameters.EQUATION):
            return self.__equation_comparison()

        return self.__default_comparison()
