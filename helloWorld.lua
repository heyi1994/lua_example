print("Hello World")

--����ע��print("heyidada")

--[[

    print("����ע��")


--]]
--print(a)

--a=100
--b="1"
--print(a+b)

--c=nil
--print(c)

--��������
print(type(0)) --number
print(type("heyidada")) --string
print(type(false)) --boolean
print(type(nil))  --nil
b={1,2,3}
print(type(b))  --table
print(type(print)) --function


--�ַ�������

  --A������
	a="heyi"
	b="dada"
	print(a..b)

	c=22
	d=33
	print(c..d)


  --B������
    e="heyidada"
	print(#e)
	print(#"heyidada")

  --C����һ�������ַ����Ͻ�����������ʱ��Lua �᳢�Խ���������ַ���ת��һ������:
    print(1+"2")
	--print(2+"c")   --error

  --D����״�ַ���
    html=[[
	    <html>
            <head></head>
              <body>
                  <a href="http://www.runoob.com/"></a>
              </body>
		</html>
	     ]]
	print(html)



--ѭ��
  --A��Whileѭ��
	  h=0
	  while(h<20)
	  do
	  print("while:a is:"..h)
	  h=h+1
	  end

  --B��forѭ��  ��ʼֵ�����ֵ����Сֵ���ɳ�ʼֵ������ֵ����������ֵ
      for m=10,1,-1
	  do
	  print("the m is:"..m)
	  end
  --C��repeat...untilѭ��
      i=0
	  repeat
	   print('the i is:'..i)
	   i=1+i
	  until(i>15)
  --D��break
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

--�ж����
  --A��if then else end
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
  --B��if then ...else if ...else...end

--����
  --A����ͨ����
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

  --B���ɱ����


