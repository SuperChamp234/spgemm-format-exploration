# generate matrix of 5x5 and 5x5 sizes and make them symmetric and convert to mmio format

import scipy.io as sio
import scipy.sparse as sps

from scipy.io.mmio import MMFile


class MMFileFixedFormat(MMFile):

    def _field_template(self, field, precision):
        # Override MMFile._field_template.
        return f'%.{precision}f\n'

def main():
    #generate random matrix
    A = sps.rand(5,5,0.5)
    B = sps.rand(5,5,0.5)
    #make them symmetric
    A = A + A.T
    B = B + B.T
    #convert to mmio format, while storing it as a float and not exponential
    MMFileFixedFormat().write('/home/leoh/Documents/spgemm-format-exploration/test_matrices/A.mtx', A, field='real', precision=9)
    MMFileFixedFormat().write('/home/leoh/Documents/spgemm-format-exploration/test_matrices/B.mtx', B, field='real', precision=9)
    #print rowptr, colind, data
    print("A:")
    print(A.indptr)
    print(A.indices)
    print(A.data)
    print("#"*10)
    #print matrices in dense format
    print("A:")
    print(A.todense())
    print("B:")
    print(B.todense())
    #multiply matrices
    C = A.dot(B)
    #round to 5 decimals
    #print result
    print("C:")
    print(C.todense())
    #convert to mmio format, while storing it as a float and not exponential
    MMFileFixedFormat().write('/home/leoh/Documents/spgemm-format-exploration/test_matrices/C.mtx', C, field='real', precision=9)


if __name__ == '__main__':
    main()
