data BinaryTree = EmptyTree
                | Leaf Integer
                | Node Integer BinaryTree BinaryTree deriving Show

-- Добавления элемента
insert :: BinaryTree -> Integer -> BinaryTree
insert EmptyTree x = Leaf x
insert (Leaf l) x | x < l    = Node l (Leaf x) EmptyTree
                  | x > l = Node l EmptyTree (Leaf x)
                  | otherwise = Leaf l                   
insert (Node v l r) x | x < v = Node v (insert l x) r
                      | x > v = Node v l (insert r x)
                      | otherwise = Node v l r

-- Удаления элемента
remove :: BinaryTree -> Integer -> BinaryTree
remove EmptyTree _ = EmptyTree
remove (Leaf l) x = if (l == x) then EmptyTree else Leaf l
remove (Node v l r) x | x < v = Node v (remove l x) r
                      | x > v = Node v l (remove r x)
-- При равенстве v и x, удаляем корень ноды, а оставшиеся два поддерева объединяем в новую ноду, выбирая в качестве ее корня корень левого поддерева
                      | otherwise = combine l r
                      where combine EmptyTree t = t
                            combine t EmptyTree = t
                            combine (Leaf l) t = Node l EmptyTree t
                            combine (Node v l r) t = Node v l (combine r t)

-- Создания пустого дерева
emptyTree :: BinaryTree
emptyTree = EmptyTree

-- Поиска элемента в дереве
containsElement :: BinaryTree -> Integer -> Bool
containsElement EmptyTree _ = False
containsElement (Leaf l)  x = x == l
containsElement (Node v l r) x | x < v = containsElement l x
                               | x > v = containsElement r x
                               | otherwise = v == x

-- Поиска в дереве наименьшего элемента, который больше или равен заданному
nearestGE :: BinaryTree -> Integer -> Integer
nearestE EmptyTree _ = error "Not found!"
nearestGE (Leaf a) x = if (x < a) then a else error "Not found!"
nearestGE (Node v l r) x | v == x = v
                         | v < x  = nearestGE r x
                         | v > x  = nearestGE l x

-- Создания дерева из списка
treeFromList :: [Integer] -> BinaryTree
treeFromList lst = foldl insert EmptyTree lst

-- Создания списка из дерева
listFromTree :: BinaryTree -> [Integer]
listFromTree EmptyTree = []
listFromTree (Leaf l) = [l]
listFromTree (Node v l r) = (listFromTree l) ++ [v] ++ (listFromTree r)
