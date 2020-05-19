import os
code = ""
with open('kot', 'r') as file:
    code += file.read()
code += "ala ma kota"
print(code)