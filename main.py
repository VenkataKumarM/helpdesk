input_list = [0, 2, 4, 0, 3, 5, 1, 0, 6]

non_zeros = [i for i in input_list if i!=0]
num_zeros = len(input_list) - len(non_zeros)
print(non_zeros+[0]*num_zeros)