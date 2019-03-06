import sys

result = ""

for arg in sys.argv:
    if sys.argv[0] != arg:
        result += arg + " "

print(result.strip())
