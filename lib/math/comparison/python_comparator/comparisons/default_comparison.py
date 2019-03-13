from comparisons.base_comparison import BaseComparison
from sympy import sympify, simplify

class DefaultComparison(BaseComparison):

    def __expression(self):
        return "(%s) - (%s)" % (self._first_value, self._second_value)

    def _exec_expression(self):
        return simplify(self.__expression())
