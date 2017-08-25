print("Hello World")

--单行注释print("heyidada")

--[[

    print("多行注释")


--]]
--print(a)

--a=100
--b="1"
--print(a+b)

--c=nil
--print(c)

--数据类型
print(type(0)) --number
print(type("heyidada")) --string
print(type(false)) --boolean
print(type(nil))  --nil
b={1,2,3}
print(type(b))  --table
print(type(print)) --function


--字符串操作

  --A、连接
	a="heyi"
	b="dada"
	print(a..b)

	c=22
	d=33
	print(c..d)


  --B、长度
    e="heyidada"
	print(#e)
	print(#"heyidada")

  --C、对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字:
    print(1+"2")
	--print(2+"c")   --error

  --D、块状字符窜
    html=[[
	    <html>
            <head></head>
              <body>
                  <a href="http://www.runoob.com/"></a>
              </body>
		</html>
	     ]]
	print(html)



--循环
  --A、While循环
	  h=0
	  while(h<20)
	  do
	  print("while:a is:"..h)
	  h=h+1
	  end

  --B、for循环  初始值，最大值或最小值，由初始值和增量值决定，增量值
      for m=10,1,-1
	  do
	  print("the m is:"..m)
	  end
  --C、repeat...until循环
      i=0
	  repeat
	   print('the i is:'..i)
	   i=1+i
	  until(i>15)
  --D、break
	  mm=0
      while(mm<20)
	  do
	  print('the mm is'..mm)
	  if(mm==15)
	  then
	  break
	  end
	  mm=mm+1
	  end

--判断语句
  --A、if then else end
      hh=0
	  while(hh<20)
	  do
	  if(hh==12)
	  then
	  print('fuck the game')
	  break
	  else
	  print('hh is'..hh)
	  end
	  hh=hh+1
	  end
  --B、if then ...else if ...else...end

--函数
  --A、普通函数
   function max(num1,num2)
   if(num1<num2)
   then
   re=num2
   else
   re=num1
   end
   return re
   end


   print("the fun is:"..max(4,6))

  --B、可变参数


