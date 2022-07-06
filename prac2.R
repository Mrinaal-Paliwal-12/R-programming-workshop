table1 = data.frame(
r1 = c(1,2,3),
r2 = c(4,5,6),
r3 = c(7,8,9)
)
class(table1)
is.data.frame(table1)

df = data.frame(
  d1 = table1$r1,
  d2 = table1$r2,
  stringsAsFactors = FALSE #only used when string column is used
)
df