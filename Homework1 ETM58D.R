variable=5+3*2
isim="mustafa"

str(variable)
str(isim)

#array
array_example=c(5,4,3,0,6,2,1,6)
array_example_char=c(5,4,"3",0,6,2,1,6)

is.character(isim)
is.character(array_example_char)
numeric_array=as.numeric(array_example_char)

array_example_char=c(array_example_char,"mustafa")
numeric_array=as.numeric(array_example_char)

# birinci elemana git
numeric_array[1] 
# 3 ile 5 arasina git
numeric_array[3:5]
# birinci elemani cikar
numeric_array[-1]
# ilk uc elemani cikar
numeric_array[-1:-3]
# 3 ile 5 i cikar
numeric_array[c(-3,-5)]

length(numeric_array)
# sonuncu elemani cikar
numeric_array[-length(numeric_array)]

# besten buyuk elemanlari bul
numeric_array>5
numeric_array[numeric_array>5]

# hangi sirada
print(which(numeric_array>5))

# matrisler
sample_matrix=matrix(0,5,4)

#farkli sirada argumanlar
sample_matrix=matrix(nrow=10,ncol=3,data=NA)

#rastgele sayi 0-1 arasi
rastgele=runif(30)

#farkli sirada argumanlar
sample_matrix=matrix(nrow=10,ncol=3,data=rastgele)

#indeksleme
sample_matrix[1,3]

#ikinci satiri goster
sample_matrix[2,]

#ikinci sutunu gosterme
sample_matrix[,-2]

#ilk 5 satiri al
sample_matrix[1:5,]

#ilk 5 satir ve son 2 sutunu al
sample_matrix[1:5,-1]
sample_matrix[1:5,2:3]

#ilk sutunun 0.3 ten buyuk olan satirlarini goster
true_false=sample_matrix[,1]>0.2
true_false_ind=which(true_false)
sample_matrix[true_false,]
sample_matrix[true_false_ind,]

#data.frame
set.seed(1)
Yas=sample(1:100,20)
Sehir=sample(c("Ankara","Istanbul","Diger"),20,replace=T)
sample_dataframe=data.frame(yas=Yas,sehir=Sehir)

#birinci satira git
sample_dataframe[1,]

str(sample_dataframe)

#besinci satirdaki yas
sample_dataframe[5,1]

sample_dataframe$yas[5]

#besinci satirdaki yasi 35 e esitle
sample_dataframe$yas[5]=35

#rastgele bir dizi yarat
rastgele=runif(1000)

#0.5 ten kucuk kac deger var
toplam_kucuk=sum(rastgele<0.5)
print(toplam_kucuk)

#dongu ornegi
for(i in 1:5){
  print(i)
}

#rastgele degiskeninin ilk bes elemani
#dongu ornegi
for(i in 1:5){
  print(rastgele[i])
}

#rastgele degiskenin 0.5 den kucuk degerlerini goster ve say

kucuk_count=0
for(i in 1:length(rastgele)){
  if(rastgele[i]<0.5){
    kucuk_count=kucuk_count+1
    print("kucuk")
  } else {
    print("buyuk")
  }
}
print(kucuk_count)
toplam_kucuk=sum(rastgele<0.5)
print(toplam_kucuk)


#pi tahmini kare ile

n_observation=10000
kare=matrix(runif(n_observation*2,-1,1),ncol=2)
plot(kare)
origine_uzalik=sqrt(kare[,1]^2+kare[,2]^2)

plot(kare,col=(origine_uzalik<=1)+1)

tahminipi=4*sum(origine_uzalik<=1)/n_observation

print(pi)
print(tahminipi)


#pi tahmini kup ile

n_observation=10000
kup=matrix(runif(n_observation*3,-1,1),ncol=3)
plot(kup)
origine_uzalikkup=sqrt(kup[,1]^2+kup[,2]^2+kup[,3]^2)

plot(kup,col=(origine_uzalikkup<=1)+1)

tahminipi=6*sum(origine_uzalikkup<=1)/n_observation

print(pi)
print(tahminipi)
