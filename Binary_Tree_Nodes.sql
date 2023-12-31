
/****************************MS SQL SERVER
/*
ou are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/


Select N,
Case
    When P is null Then "Root"
    When N in ( Select P From BST) Then "Inner"
    Else "Leaf"
End As Node_Type
From BST 
Order By N