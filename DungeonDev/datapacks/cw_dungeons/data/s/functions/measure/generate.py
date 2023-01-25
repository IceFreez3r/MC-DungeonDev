import os
def coordinatesToNumber(x, y, z, base = 32):
    return x * base * base + y * base + z

def numberToCoordinates(n, base = 32):
    x = n // (base * base)
    y = (n - x * base * base) // base
    z = n - x * base * base - y * base
    return x, y, z

def recursionTree(min = 0, max = 32**3, splits = 2):
    if min + 1 >= max:
        return
    else:
        limits = []
        for i in range(splits):
            limits.append(min + i * (max - min) // splits)
        limits.append(max)
        limits = [val for i, val in enumerate(limits) if i == 0 or val != limits[i - 1]]
        splitCheck(limits)
        for i in range(len(limits) - 1):
            recursionTree(limits[i], limits[i + 1], splits)

def splitCheck(limits):
    min = limits[0]
    max = limits[-1] - 1
    path = f"tree/combined/{min}_{max}.mcfunction"
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        for i in range(len(limits) - 1):
            min = limits[i]
            max = limits[i + 1] - 1
            if min == max:
                x, y, z = numberToCoordinates(min)
                f.write(f"execute if score .combined dg.measure matches {min} run function s:measure/tree/x_{x}/y_{y}/z_{z}\n")
            else:
                f.write(f"execute if score .combined dg.measure matches {min}..{max} run function s:measure/tree/combined/{min}_{max}\n")


recursionTree(splits=3)

def volumeCheck(x, y, z):
    os.makedirs(f"tree/x_{x}/y_{y}/", exist_ok=True)
    with open(f"tree/x_{x}/y_{y}/z_{z}.mcfunction", "w") as f:
        f.write(f"execute if blocks ~ ~ ~ ~{x} ~{y} ~{z} -32 -64 -32 all run scoreboard players set .fits dg.measure 1\n")

for i in range(32**3):
    volumeCheck(*numberToCoordinates(i))
