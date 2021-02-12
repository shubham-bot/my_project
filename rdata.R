#it is software environment for stat. analysis and graphical representation

#comments in R:- describe line of code
#1)single line comments:- it is denoted by #
#2)multiline comments:- it starts with " and ends with "
"
this is demo 
.....
...
..
.

"

#data types in r:-to define which type of data used for operation
#1)integer data:- its whole number 45L,67L,-999L
#2)numeric data :- it contains decimal point 5.67,0.998,-9.88
#3)logical data:- TRUE/FALSE Y/N
#4)character data:- a...z string "ATGCGGTCTC"
#5)raw data:- binary data 1010010101



a=100
print(a)
a

b=58696+5878
b

c=35563-2355552
c

#features if R:-
#1)scripting is simple
#2)packages avaliable
#3)stat. analysis
#4)graphical support
#5)functions are avaliable

#R-objects:-it helps you to store the data
#1)vector :- single dimention data
#i)direct declaration:-

a=900
a
class(a)

s="ATGTGCGC"
s
class(s)

d=50L
d
class(d)

#ii)range:- it dsiplays range between intervals  (by default incre 1)

r1=3:9
r1

r2=1:5
r2

r3=4:10
r3

r3[1]
r3[2:5]

#iii)sequence:- allows you to increment values

s1=seq(1,20,by=3)
s1

s2=seq(4,40,by=4)
s2
s2[1]
s2[3:6]

#iv)combination:- to store the different data

c1=c(12,34,-4,4,"ATGCTG","CGCG")
c1

c1[1]
c1[3:7]

c2=c(12,34,23,4.56,800,77)
c2

#2)list:- it stores the data in hierarchical format

l1=list(12,34,1,"TAC",c(120,334,5))
l1

l1[5]

l1[[5]]

l1[[5]][3]
l1[[5]][1]

#3)matrix:- it stores the data in row and columns format

m1=matrix(c(10,20,30,40),nrow=2,ncol=2)
m1

m2=matrix(c(10,20,30,40),nrow=2,ncol=2,byrow=TRUE,dimnames=list(c("r1","r2"),c("c1","c2")))

m2

m2["r2","c2"]
m2[2,1]
m2[1,]
m2[,2]

#4)array:- it stores the multiple matrix


a1=array(c(10,20,30,40,50,60,70,80),dim=c(2,2,2),dimnames=list(c("r1","r2"),c("c1","c2"),c("m1","m2")))
a1

a1["r2","c2","m1"]
a1["r1","c2","m2"]
a1[,,"m2"]

#5)data frames:- it stores the data in table format

d1=data.frame(
  geneID=c(111,222,333,444),
  geneName=c("AAA","DDD","CCC","DDD"),
  length_c=c(23234,3454,4535,234324),
  GC_per=c(45,56,34,87)
)
d1

d1$GC_per

d1[3,c(1,2,3)]

#6)factor:- it gives unique levels  of values


c1=c(12,34,12,8,78,8,34,-4,-5,-4,34,55,6,55,67,78,56,45,7,5,44,10)
factor(c1)



#package installation:- ggplot()

#1)using CRAN repository:-
install.packages("gdata")  

#2)using bioconductor:-

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")

#functions in R:- its block of code which performs particular operation
#1)inbuilt function:- already present in R c(),seq()

c1=c(12,34,12,8,78,8,34,-4,-5,-4,34,55,6,55,67,78,56,45,7,5,44,10)

sum(c1)
length(c1)
max(c1)
min(c1)
mean(c1)
median(c1)
sd(c1)

#2)user defined function:- own function
"
function_name=function(parameters...){   #function defination
block of code                            #function body
}
function_name()   #function calling

"


average=function(x){
  sum(x)/length(x)
}
average(c(12,34,456,3,345,34,345,54,9))
average(c(23,345,5,35,345))


"
 Plots:
  1. dot plot
  2. line plot
  3. histogram
  4. bar plot
  5. pie chart
  
1. dot plot: distribution of data"
x=c(22,23,56,43,2,44,23,54)    
plot(x)   
plot(x,main="dot plot",xlab="number",ylab="age",col="red")

#2.line plot:  
plot(x,type="l") 

#3.histogram: represents frequency
hist(x)

#4. barplot:
barplot(x)

#5.Pie charts:
pie(x)

plot(x,type="b")





