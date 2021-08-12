## R Sebagai Kalkulator -------
2 + 3   #penjumlahan
2 - 3   #pengurangan
2 * 3   #perkalian
3 / 2   #pembagian
3 ^ 2   #perpangkatan
5 %% 2   #modulo
5 %/% 2  #pembagian pembulatan kebawah

## Menyimpan objek di R -------
r = 8
phi = 3.14

r 
phi

phi*(r^2)

## Tipe Data di R --------
# Data Atomic Vector -------
2      #numerik
"Adi"  #karakter
TRUE   #logical

# Data Vector --------
# himpunan data atomic vector bertipe sama
v1 = c(92, 70, 91, 49)                  #vector numerik
class(v1)

v2 = c("Aldi", "Budi", "Cindy", "Didi") #vector karakter
class(v2)

v3 = c(TRUE, TRUE, FALSE, TRUE)         #vector logical
class(v3)

v4 = c("Aldi", 70, FALSE)
class(v4)

# Mengakses elemen vector (indexing)
v1[2]
v1[4]
v1[2:4]

# Data Frame --------
# Gabungan vector berpanjang sama
df1 = data.frame(v1, v2, v3)
df1

data.frame(v1, v2, v4)

# Akses elemen data frame
# kolom
df1[2:3]
df1[3]
df1$v3

# baris
df1[3,]
df1[4,]
df1[1:3,]

# baris dan kolom
df1[2,3]
df1[4,2]
df1[1:3, 1:2]

write.csv(df1, "contoh export data.csv")

# List --------
# Himpunan data campuran
l1 = list(1, "Cindy", TRUE, v1, phi, df1)
l2 = list("Adi" = 87, "Budi" = 72, "Cindy" = 98)

#Cara mengakses elemen list
l1[[4]]
l2[[3]]
l2$Cindy

## if else / percabangan -------
nilai = 42    
if (nilai > 65) {
  print("Selamat Anda Lulus")
} else {
  print("Tetap semangat")
}


## looping / perulangan / iterasi ------
# looping berbasis index
warna_baju = c("Biru", "Merah", "Kuning", "Hijau")

paste("Hari ini pakai baju warna", warna_baju[1])
paste("Hari ini pakai baju warna", warna_baju[2])
paste("Hari ini pakai baju warna", warna_baju[3])
paste("Hari ini pakai baju warna", warna_baju[4])

for (warna in warna_baju) {
  baju_hari_ini = paste("Hari ini pakai baju warna", warna)
  print(baju_hari_ini)
}

# looping berbasis kondisi
bak = 0
while (bak < 11) {
  bak = bak + 2
  print(bak)
}


## Challenge ------- 
# Buat data frame 3 kolom 5 baris (nama, nilai, dan jenis kelamin)
nama = c("Budi", "Doni", "Sinta", "Dewi", "Rizal")
nilai = c(90, 88, 70, 85, 75)         
jenis_kelamin = c(TRUE, TRUE, FALSE, FALSE, TRUE)

data_mhs = data.frame(nama, nilai, jenis_kelamin)
data_mhs