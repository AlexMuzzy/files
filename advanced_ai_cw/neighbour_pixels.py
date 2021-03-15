import numpy as np

def get_neigbour_pixels(image, location, radius = 1):
    result = []
    for i in range(location[0] - radius, location[0] + radius + 1):
        for j in range(location[1] - radius, location[1] + radius + 1):
            result.append((i, j))
    return result

image = np.zeros((300, 300, 3))

print(get_neigbour_pixels(image, (256, 120)))