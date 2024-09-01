# ==============================================
# Video 8. Basics of R: Atomic types and Vectors
# ==============================================
a <- "hello"
class(a)
myInteger <- 62L
myLogical <- TRUE

simpleVector <- c(1, 23, 45.7, 45.78)
x <- vector("numeric", length = 5)
x + 1
is.vector(x)
v <- c("A", "B", "C")
v[1]
v[c(1,3)]
c[2:3]
v[2:3]
v[c(T,T,F)]
v[1] <- "Z"
v
v[1:2] <- c("Q", "J")
v
v1 <- 1:3
v2 <- c(1,2,3)
class(v1)
class(v2)
identical(v1, v2)
v3 <- c(1L, 2L, 3L)
identical(v1,v3)
length(v2)
dim(v2)
x <- c(1,2,3)
y <- c(4,5,6)
z <- c(x,y)
z <- c(x, 777, y)

# ==============================================
# Video 9. Basics of R: Lists
# ==============================================

l <- list("John", 72, TRUE)
l
v <- c(1,2,3)
l <- list("John", 72, TRUE, v)
l
l <- list("John", 72, TRUE, v, list("Anna", "bob"))
l
l[1]
class(l[1])
l[[1]]
class(l[[1]])
l[[5]][[2]]
names(l) <- c("Name", "Age", "Retired", "Numbers", "Parents")
l
l$Retired
'[[3'
l[[3]]
l[["Retired"]]
xx <- "Retired"
l[[xx]]
length(l)
l$Name
l$Name <- "James"
l
l[length(l) + 1] <- "Boston"
l
names(l)
names(l)[6] <- "Residence"
l
l$Birthplace <- "Chapel Hill"
l
l$Residence <- NULL
l


# ==============================================
# Video 10. Basics of R: Matrices
# ==============================================

x <- matrix(1:12, nrow = 4, ncol = 3)
x
y <- matrix(1:12, nrow = 6)
y
myrows <- c("A", "B", "C", "D")
mycols <- c("col1", "col2", "col3", "col4")
x <- matrix(data = 1:16, nrow = 4, ncol = 4, dimnames = list(myrows, mycols))
x
colnames(x)
rownames(x)
rownames(x)[4]
rownames(x)[4] <- "ZZ"
x
x[14]
x[3,3]
x[2,3]
x[2, "col3"]
x[2,]
x[,2]
x[1:3, 3:4]
t(x)
cbind(x, c(11,22,33,44))
x
cbind(x, "col5" = c(11,22,33,44))
x
dim(x)
dim(x) <- c(2,8)
x
a <- c(1,2,3,4)
b <- c(11,22,33,44)
is.vector(a)
is.matrix(a)
m1 <- rbind(a,b)
m1
is.matrix(m1)
m2 <- cbind(a,b)
m2
dim(m2)

# ==============================================
# Video 11. Basics of R: Arrays
# ==============================================

a <- array(1:18, dim = c(3,3,2))
a
a(1,1,1)
a[1,1,1]
a[2.3.2]
a[2,3,3]
a[2,3,2]
a[,1,]

# ==============================================
# Video 12. Basics of R: Dataframes
# ==============================================

df <- data.frame(x=1:3, y=3:1)
df
person_names <- c("Alice", "Bob", "Charlie", "David")
ages <- c(45,35,25,60)
df <- data.frame(person_names, ages)
df
class(df)
typeof(df)
cars
head(cars)
head(cars,10)
class(cars)
length(cars)
ncol(cars)
nrow(cars)
c <- cars
c$speed
c["speed"]
class(c$speed)
c$speed
class(cars["speed"])
class(c["speed"])
head(c)
c[c$speed<=7,]
c[c$speed<=7 & c$dist>=10,]

c[1,1] <- 100
head(c)
c[c$speed==7,]$speed <- 100
head(c)
c <- rbind(c, c(99,77))
tail(c)
colnames(c)
colnames(c)[2]
colnames(c)[2] <- "distance"
colnames(c)
c$distance

