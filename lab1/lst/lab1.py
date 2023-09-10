from math import log10, pow, sqrt, pi

# for 2G
# hte – эффективная высота базовой антенны в метрах (от 30 до 200 м)
# hre – эффективная высота мобильной антенны в метрах (от 1 до 10 м),
# fc – частота сигнала в МГц от 150 до 1500 МГц
# d – расстояние от передатчика до приемника, км
def PLg2(fc, hte, hre, d, Cm):
    return 46.3  + 33.9 * log10(fc) - 13.82 * log10(hte) - a(hre) + (44.9 - 6.55 * log10(hte)) * log10(d) + Cm

def a(hre):
    return 3.2 * pow((log10(11.75 * hre)), 2) - 4.97

# for 3G
# d – расстояние между передатчиком и приемником (м),
# n – количество этажей на пути.
def PLg3(n, d):
    return 37 + 30 * log10(d) + 18.3 * pow(n, ((n + 2) / (n + 1) - 0.46))

# for 4G
# fc – частота сигнала в ГГц
# h – средняя высота зданий в диапазоне 5 м < h < 50 м, типовое значение h = 20 м,
# W – ширина улицы в диапазоне 5 м < W < 50 м, типовое значение W = 20 м
# hBS и hUT – действительныевысоты антенн
#    1. типовое значение hBS = 25 м и 10 м < hBS < 150 м,
#    2. 1.5 м ≤ h UT ≤ 22.5 м
def PLg4(W, h, hBS, d3D, fc, hUT):
    return 161.04 - 7.1 * log10(W) + 7.5 * log10(h) - (24.37 - 3.7* pow((h / hBS),2)) * log10(hBS) + (43.42 - 3.1 * log10(hBS)) * (log10(d3D) - 3) + 20 * log10(fc) -(3.2 * pow(log10(17.625),2) - 4.97) - 0.6 * (hUT - 1.5)

# ha – высота антены,
# hm – твоя высота.
def d3d(ha, hm, d):
    if ha >= hm:
        return sqrt(pow((ha - hm), 2) + pow(d, 2))
    else:
        return sqrt(pow((hm - ha), 2) + pow(d, 2))


# For WiFi
def PLwf(d, fc):
    return - 20 * log10 (lm(fc) / (4 * pi * d))

def lm(fc):
    return fc / 299_792_458

# 2G
# нельзя использовать для микросот ???
# print("2G = ", g2(fc=800, hte=0.030, hre=0.010, d=0.358, Cm=3))


# 3G -OK
# print(- PLg3(n=0, d=155) + 12)
# print(- PLg3(n=0, d=152) + 12)
# print(- PLg3(n=0, d=158) + 12)



# 4G - OK - [maybe FIX 3d] 
# print(- PLg4(W=20, h=20, hBS=25, d3D=155, fc=2.6, hUT=22.5) + 12)
# print(- PLg4(W=20, h=20, hBS=25, d3D=152, fc=2.6, hUT=22.5) + 12)
# print(- PLg4(W=20, h=20, hBS=25, d3D=158, fc=2.6, hUT=22.5) + 12)


# WiFi -?
# print(20 - (PLwf(0.5, 5_000_000_000) + 3))
# print(20 - (PLwf(4.5, 5_000_000_000) + 3))
# print(20 - (PLwf(2.5, 5_000_000_000) + 3))

d = 5  # Расстояние в метрах
fc = 5_000_000_000  # Частота в герцах (5 ГГц)

result = PLwf(d, fc)
print(result)
