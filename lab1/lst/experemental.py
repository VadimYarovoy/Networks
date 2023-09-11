import math

def lp_wifi(d, f):
    print("(4 * math.pi * d * f) =", (4 * math.pi * d * f))
    print("(4 * math.pi * d * f) / 300_000_000 =",(4 * math.pi * d * f) / 300_000_000)
    print("math.log10", math.log10((4 * math.pi * d * f) / 300_000_000))
    return 20 * math.log10((4 * math.pi * d * f) / 300_000_000)  


# works
def wifi2(d, f):
    return 32.45 + 20 * math.log10(d) + 20 * math.log10(f)


print(wifi2(0.006, 2400))
print(wifi2(0.006, 5000))