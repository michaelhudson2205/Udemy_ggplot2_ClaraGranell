# Video 8. Basics of R: Atomic types and Vectors
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
