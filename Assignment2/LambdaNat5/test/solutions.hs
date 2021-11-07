-- member
member :: Int -> [Int] -> Int
member _ [] = 0
member x (y : ys) = if x == y 
    then 1 
    else member x ys 

-- remove
remove :: Int -> [Int] -> [Int]
remove x [] = []
remove x (y:ys) = if x == y
    then ys
    else y : remove x ys

-- sum
mySum :: [Int] -> Int
mySum [] = 0
mySum y = sum (y)

-- prod
prod :: [Int] -> Int
prod [] = 0
prod y = product (y)

-- plus_two
plus_two :: Int -> Int
plus_two x = x + 2;

-- map
myMap :: Int -> [Int] -> [Int]
myMap x [] = []
myMap x (y : ys) = y + x : myMap x (ys)


-- insert
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys) = if x < y
    then x : y : ys
    else y : insert x ys 


-- sort
sort :: [Int] -> [Int]
sort [y] = [y]
sort (y : ys) = insert y (sort ys)

main = do
    let list0 = [1, 2, 3, 4]
    print $ member 1 (list0)

    let list1 = [1,2,3,4]
    print $ remove 3 (list1);

    let list2 = [7,11,1,3]
    print $ mySum (list2)
    print $ prod (list2)

    print $ myMap (plus_two 0) list2

    print $ sort list2

