import scipy.io

# Example usage
filename = '/home/leoh/Documents/spgemm-format-exploration/test_matrices/494_bus.mtx'  # Replace with your file path
matrix = scipy.io.mmread(filename)

# Access matrix properties
num_rows, num_cols = matrix.shape
num_nonzeros = matrix.nnz

# Calculate sparsity
total_elements = num_rows * num_cols
sparsity = 1.0 - (num_nonzeros / total_elements)
print("Number of Nonzeros:", num_nonzeros)
print('Sparsity:', sparsity)
