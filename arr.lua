

--����
--[[
   ���������һ���Ǵ�1��ʼ������Ҳ����Ϊ����
--]]
  arr={'heyi','dada'}

  for i=0,2
  do
  print(arr[i])
  end

  --Ϊ��������������

  array={}
  for m=-5,5,2
  do
  array[m]=m
  end

  for h=-5,5,2
  do
  print('the h is '..array[h])
  end

  --����ѭ��  ipairs����nil��break pairs����
  arr2={'f','u','c','k'}
  for key,value in ipairs(arr2)
  do
  print(key..':'..value)
  end


 --ģ�����
   require("mod")
   print(module.constant)

   module.fun1()

   module.fun3()




