import sys

clock_config_file = sys.argv[1]

compiler_flags = []

with open(clock_config_file, 'r') as config_file:
    for line in config_file:
        if line.strip():
            macro_name, value = line.strip().split()
            if value == '1':
                compiler_flags.append(f'-D{macro_name}')

print(' '.join(compiler_flags))