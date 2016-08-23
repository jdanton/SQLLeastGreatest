CREATE FUNCTION LeastDate ( @col1 datetime,
                                                @col2 datetime = NULL,
                                                @col3 datetime = NULL,
                                                @col4 datetime = NULL,
                                                @col5 datetime = NULL,
                                                @col6 datetime = NULL,
                                                @col7 datetime = NULL,
                                                @col8 datetime = NULL,
                                                @col9 datetime = NULL,
                                                @col10 datetime = NULL,
                                                @col11 datetime = NULL,
                                                @col12 datetime = NULL,
                                                @col13 datetime = NULL,
                                                @col14 datetime = NULL,
                                                @col15 datetime = NULL,
                                                @col16 datetime = NULL,
                                                @col17 datetime = NULL,
                                                @col18 datetime = NULL,
                                                @col19 datetime = NULL,
                                                @col20 datetime = NULL,
                                                @col21 datetime = NULL,
                                                @col22 datetime = NULL,
                                                @col23 datetime = NULL,
                                                @col24 datetime = NULL,
                                                @col25 datetime = NULL)
 
RETURNS DATETIME
AS
       
BEGIN
 
DECLARE @T AS TABLE
(
                                                col1 datetime,
                                                col2 datetime  NULL,
                                                col3 datetime  NULL,
                                                col4 datetime  NULL,
                                                col5 datetime  NULL,
                                                col6 datetime  NULL,
                                                col7 datetime  NULL,
                                                col8 datetime  NULL,
                                                col9 datetime  NULL,
                                                col10 datetime  NULL,
                                                col11 datetime  NULL,
                                                col12 datetime  NULL,
                                                col13 datetime  NULL,
                                                col14 datetime  NULL,
                                                col15 datetime  NULL,
                                                col16 datetime  NULL,
                                                col17 datetime  NULL,
                                                col18 datetime  NULL,
                                                col19 datetime  NULL,
                                                col20 datetime  NULL,
                                                col21 datetime  NULL,
                                                col22 datetime  NULL,
                                                col23 datetime  NULL,
                                                col24 datetime  NULL,
                                                col25 datetime  NULL
);
 
INSERT @T
VALUES
    (@col1, @col2, @col3,@col4, @col5, @col6, @col7, @col8, @col9, @col10, @col11, @col12, @col13, @col14, @col15, @col15, @col16, @col17, @col18, @col19, @col20, @col21,@col22,@col23,@col24,@col25);
 
DECLARE @max datetime
SELECT @max=MAX(f.x)
FROM @T AS t
CROSS APPLY
    (VALUES (col1), (col2), (col3), (col4),(col5),(col6) ,(col7),(col8), (col9),(c) AS f (x)
