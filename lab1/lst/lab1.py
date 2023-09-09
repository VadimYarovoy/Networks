from math import log10

def g2(fc, hte, hre, d, Cm):
    46.3  + 33.9 * log10(fc) - 13.82 * log10(hte) - a(hre) + (44.9 - 6.55 * log10(hte)) * log10(d) + Cm

# for 2G
def a(hre):
    return 3.2 * (log10(11.75 * hre))^2 - 4.97

def g3(n, d):
    37 + 30 * log10(d) + 18.3 * n((n + 2) / (n + 1) - 0.46)

def g4(W, h, hBS, d3D, fc, hUT):
    161.04 - 7.1 * log10(W) + 7.5 * log10(h) - (24.37 - 3.7(h / hBS)^2) * log10(hBS) + (43.42 - 3.1 * hBS(hBS)) * (log10(d3D) - 3) + 20 * log10(fc) -(3.2 *  (log10(17.625))^2 - 4.97) - 0.6 * (hUT - 1.5)