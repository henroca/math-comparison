from sympy import sympify, simplify

class DefaultComparison:

    def __init__(self, first_value, second_value):
        self.first_value = first_value
        self.second_value = second_value

    def compare(self):
        return self.exec_expression() == 0

    def expression(self):
        return "(%s) - (%s)" % (self.first_value, self.second_value)

    def exec_expression(self):
        return simplify(self.expression())
