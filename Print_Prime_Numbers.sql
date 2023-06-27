
DECLARE @i int = 2
Declare @o varchar='2'+CAST('&' AS varbinary(10))
Print @o
Declare @q int =0


WHILE @i < 10
BEGIN
    Declare @c int=0
    SET @i = @i + 1
    Print 'i' + CAST(@i AS VARCHAR(10))
    DECLARE @j int = 1
    WHILE @j < ((@i/2)+2)
    BEGIN
        SET @j = @j + 1
        Print 'j' + CAST(@j AS VARCHAR(10))
        Print(@i%@j)
        if ((@i%@j=0) And @j<@i)
            SET @c =@c+1        
    END
    if @c=0
        Set @o = @o + CAST(@i AS VARCHAR(10))+CAST('&' AS VARCHAR(10))
        Print @o
End
Print @o