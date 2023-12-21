
#熟悉R裡面的基本物件(1)
#我們正式介紹一下物件，在R裡面物件有相當多屬性，而剛剛那兩個物件屬於同個種類叫做「向量(vector)」，在R裡面大致上將物件分為幾個層次，主要共分3個層次：
#變數(Variable)層：邏輯(logical)向量、整數(integer)向量、因子(factor)向量、數字(numeric)向量、文字(character)向量

#陣列(Array)層：矩陣(matrix)、資料表(data.frame)

#列表(List)層：列表(list)、S3物件(S3 class)、S4物件(S4 class)


#熟悉R裡面的基本物件(2)
#在這裡我們先不要被一大堆名詞定義給嚇到，我們先從簡單的變數(Variable)層物件開始認識，其他的部分到我們開始使用後再學習。

#變數層中有幾個函數相當重要：

#– 函數「as.XXX()」：可以強迫某個向量內所有的內容全部轉換為該種類

#– 函數「class()」：可以查詢該物件的屬性

a = c(TRUE, FALSE, TRUE, FALSE)
class(a)

b = c(1, 2, 3, 4, 5)
class(b)
b1 = as.integer(b)
class(b1)

c = c(0.7, -0.9, 1.2, -2.1, 3.7)
c1 = as.integer(c)
c1

d = c("A", "B", "C", "C", "B")
class(d)
d1 = as.factor(d)
d1

e = c(c, d)
e
class(e)

e1 = c(c1, d1)
e1
class(e1)


#熟悉R裡面的基本物件(3)
#變數(Variable)層物件中有幾個重要的函數來描述它的基本資料，這裡我們要學習一下
#函數「length()」可以查詢該向量的長度

#函數「levels()」可以查詢因子向量的類別種類

d = c("A", "B", "C", "C", "B")
class(d)
d1 = as.factor(d)
d1

n = length(d1)
n

categories = levels(d1)
categories
#在這邊我們介紹第一個函數組合所產生的效果，對於一個因子物件，如果我們把函數「length()」與函數「levels()」做結合，看看會發生什麼事情
categories = levels(d1)
n.categories = length(categories)
n.categories

# 用下列這串意思一樣
n.categories = length(levels(d1))
n.categories


