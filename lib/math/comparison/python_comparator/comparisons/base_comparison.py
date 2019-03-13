from abc import ABC, abstractmethod
from sympy import sympify

class BaseComparison(ABC):

    def __init__(self, first_value, second_value):
        self._first_value = first_value
        self._second_value = second_value

    def compare(self):
        result = self._exec_expression()

        return result is sympify(0) or result is True

    @abstractmethod
    def _exec_expression(self):
        pass
