from sympy import Eq, sympify

class Equation(object):

    def __init__(self, value):
        self.__value = value
        self.__make()

    def __eq__(self, other):
        return self.__equation == other.__equation

    def __make(self):
        self.__split_value()
        self.__equation = self.__create_sympy_eq(self.__value[0], self.__value[1])

    def __create_sympy_eq(self, first_member, second_member):
        return Eq(sympify(first_member.strip()), sympify(second_member.strip()))

    def __split_value(self):
        self.__value = self.__value.split('=')
