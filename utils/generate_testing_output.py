#read matrix market file and multiply it by itself and store in matrix market format
#usage: python generate_output.py <input_file> <output_file>

import sys
import scipy.io as sio

from scipy.io.mmio import MMFile

class MMFileFixedFormat(MMFile):

    def _field_template(self, field, precision):
        # Override MMFile._field_template.
        return f'%.{precision}f\n'

def main():
    if len(sys.argv) != 3:
        print("usage: python generate_output.py <input_file> <output_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    #read matrix market file
    A = sio.mmread(input_file)

    #multiply the matrix by itself
    B = A * A

    #store the result in matrix market format
    MMFileFixedFormat().write(output_file, B, field='real', precision=4)

if __name__ == "__main__":
    main()