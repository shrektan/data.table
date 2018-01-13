library(data.table)
dt <- data.table(
  x = c("公允价值变动损益", "红利收入", "价差收入", "其他业务支出", "资产减值损失"),
  y = enc2utf8(c("公允价值变动损益", "红利收入", "价差收入", "其他业务支出", "资产减值损失")),
  v = 1:5
)
forderv(dt, "x")
forderv(dt, "y")


setkey(dt, x)
dt[]
Encoding(dt$x) 
dt[J("公允价值变动损益")][]
dt[, y := enc2utf8(x)]
setkey(dt, y)

dt[]
Encoding(dt$x)
dt[J("公允价值变动损益")][]

data.table:::forderv(dt, "x")
data.table:::forderv(dt, "y")


dt <- data.table(
  x = c("公允价值变动损益", "红利收入", "价差收入", "其他业务支出", "资产减值损失"),
  y = enc2utf8(c("公允价值变动损益", "红利收入", "价差收入", "其他业务支出", "资产减值损失")),
  z = 1:5
)
setkey(dt, x)
dt[]
dt[J("公允价值变动损益"), z]
setkey(dt, y)
dt[]
dt[J("公允价值变动损益"), z]
iconv(dt$y, from = "GB2312", to = "UTF-8")
Encoding(dt$y)
