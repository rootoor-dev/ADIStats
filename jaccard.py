import numpy as np

def jaccard_binary(x,y):
    """A function for finding the similarity between two binary vectors"""
    intersection = np.logical_and(x, y)
    union = np.logical_or(x, y)
    similarity = intersection.sum() / float(union.sum())
    return similarity

# Define some binary vectors
x = [0,1,0,0,0,1,0,0,1]
y = [0,0,1,0,0,0,0,0,1]
z = [1,1,0,0,0,1,0,0,0]

# Find similarity among the vectors
simxy = jaccard_binary(x,y)
simxz = jaccard_binary(x,z)
simyz = jaccard_binary(y,z)

print(' Similarity between x and y is', simxy, '\n Similarity between x and z is ', simxz, '\n Similarity between x and z is ', simyz)


'''OUT:
Similarity between x and y is 0.25 
 Similarity between x and z is  0.5 
 Similarity between x and z is  0.0
 
 '''
