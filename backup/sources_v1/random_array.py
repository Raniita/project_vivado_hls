import numpy as np

N = 75
MIN = -200
MAX = 400

print(f">>> Using: N = {N}, MIN = {MIN}, MAX = {MAX}")

rand_array = np.random.randint(MIN, MAX, N)
print("{", end="")
for i in range(0, len(rand_array)):
	if i == len(rand_array)-1:
		print(f"{rand_array[i]}", end="")
	else:
		print(f"{rand_array[i]},", end="")
print("}")

