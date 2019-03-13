class Parameters(object):
    DEFAULT='DEFAULT'
    EQUATION='EQUATION'

    def __init__(self, values):
        self.__values = values
        self.__parameters = {}
        self.__math_params()

    def __push(self, key, value):
        self.__parameters[key] = value

    def get(self, key):
        return self.__parameters[key]

    def __math_params(self):
        self.__push('first', self.__values[1])
        self.__push('second', self.__values[2])
        self.__push('type', self.__type_expression())

    def __type_expression(self):
        try:
            return self.__values[3]
        except IndexError:
            return self.DEFAULT
