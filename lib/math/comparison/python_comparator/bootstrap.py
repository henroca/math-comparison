from comparisons.default_comparison import DefaultComparison

class Bootstrap:
    DEFAULT='DEFAULT'
    FUNCIONS='FUNCIONS'

    def load_params(self, params):
        self.params = params
        return self

    def math_params(self):
        return [self.params[1], self.params[2]]

    def type_expression(self):
        try:
            return self.params[3]
        except IndexError:
            return self.DEFAULT

    def default_comparison(self):
        math_params = self.math_params()
        comparasion = DefaultComparison(math_params[0], math_params[1])

        return comparasion.compare()

    def exec(self):
        if (self.type_expression() == self.FUNCIONS):
            print(False)

        print(self.default_comparison())

