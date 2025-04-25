#R as calculator

(2025-2020)
5/(2025-2001)
0.2083333*100
((2025-2020)/(2025-2001)*100)  

# variables and vectors

a= 20
b= 30
c= 40
x= c(1,2,3,4,5,6)
y= c(3, 6, 9, 12, 15, 20)
x[2:5]
y[3:5]
DNA <- c("A", "T", "G", "C")
x+y 
x+y
y/x

# Properties of dataframe


#logical operations on datasets

names <- c("Mina", "Raju", "Mithu", "Lali")
gender <- c("Female", "Male", "Female", "Female")
age <- c(15, 12, 2, 3)
is_human <- c(TRUE, TRUE, FALSE, FALSE)
cartoon <- data.frame(names, gender, age, is_human)
write.table(cartoon, "cartoon.csv", sep = ",", col.names = TRUE)
df <- read.table("cartoon.csv", header = TRUE, sep = ",")
dim(df) #`dim` means dimension. so, rows * columns
cartoon[cartoon$gender== "Female"]
cartoon[cartoon$age > 5,]
cartoon[cartoon$age>3]  
df[df$gender== "female", ]
df[df$age>2, ]
df[df$gender == "female", ]
cartoon[cartoon$gender == "Female", ]
cartoon[cartoon$age> 5,]
cartoon[cartoon$is_human == FALSE,]
cartoon[cartoon$is_human == TRUE & cartoon$age >10,]
cartoon[cartoon$names == "Mina",]
gene_expr <- data.frame(
  genes = c("TP53", "BRCA1", "MYC", "EGFR", "GAPDH", "CDC2"),
  sample1 = c(8.2, 6.1, 9.5, 7.0, 10.0, 12),
  Sample2 = c(5.9, 3.9, 7.2, 4.8, 7.9, 9),
  Sample3 = c(8.25, 6.15, 9.6, 7.1, 10.1, 11.9),
  pathways = c("Apoptosis", "DNA Repair", "Cell Cycle", "Signaling", "Housekeeping", "Cell Division")
)
write.table(gene_expr, "gene_expr.csv", sep = ",", col.names = TRUE)
gene_set <- read.table("gene_expr.csv", header = TRUE, sep = ",")
gene_set[gene_set$sample1 > 7,]
gene_set[gene_set$Sample3> 9,]
gene_set[gene_set$pathways== c("Apoptosis" , "Cell cycle,")]
gene_set[gene_set$sample1>8,]
gene_set[gene_set$pathways== "Housekeeping",]
gene_set[gene_set$pathways== "Cell Cycle",]
pathways == "Cell cycle"
sample3 >6
str(gene_set)
sample3 >6
str(df)
gender == "Female"
gender == "Female" & age>4

genes = c("TP53", "BRCA1", "MYC", "EGFR", "GAPDH", "CDC2")
sample1 = c(8.2, 6.1, 9.5, 7.0, 10.0, 12)
sample2 = c(5.9, 3.9, 7.2, 4.8, 7.9, 9)
sample3 = c(8.25, 6.15, 9.6, 7.1, 10.1, 11.9)
pathways = c("Apoptosis", "DNA Repair", "Cell Cycle", "Signaling", "Housekeeping", "Cell Division")
gene_expr <- data.frame(genes,sample1,sample2,sample3,pathways)
write.table(gene_expr, "gene_expr.csv", sep = ",", col.names = TRUE)
gene_set <- read.table("gene_expr.csv", header = TRUE, sep = ",")
sample1>8
pathways == "Apoptosis & cell cycle" 
pathways == "Apoptosis or Cell cycle"
sample1>9 & sample3> 7
 