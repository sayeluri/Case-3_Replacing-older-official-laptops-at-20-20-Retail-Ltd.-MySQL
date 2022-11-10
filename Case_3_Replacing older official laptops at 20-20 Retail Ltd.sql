Use LearnMySQL;
Select * from brownie
Select * from device
Select b.Employee_ID, d.Years_of_usage, b.Brownie_points, b.Device_code, b.Device_name
From Brownie b
Join Device as d
on (b.Device_code = d.Device_code)
Where d.Is_Windows = 0 and b.Brownie_points = (Select min(Brownie_points)
												From Brownie as x
                                                Join Device as y
                                                on (x.Device_code = y.Device_code)
                                                Where x.Brownie_points = b.Brownie_points and y.Device_code = d.Device_code)
Order by b.Brownie_points Desc, d.Device_code Desc;

