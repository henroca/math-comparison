from comparisons.base_comparison import BaseComparison
from helpers.equation import Equation

class EquationComparison(BaseComparison):

    def __init__(self, first_equation, second_equation):
        self.__first_equation = Equation(first_equation)
        self.__second_equation = Equation(second_equation)

    def _exec_expression(self):
        return self.__first_equation == self.__second_equation
