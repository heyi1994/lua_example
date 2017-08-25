

--数组
--[[
   数组的索引一般是从1开始，索引也可能为负数
--]]
  arr={'heyi','dada'}

  for i=0,2
  do
  print(arr[i])
  end

  --为负数索引的数组

  array={}
  for m=-5,5,2
  do
  array[m]=m
  end

  for h=-5,5,2
  do
  print('the h is '..array[h])
  end

  --泛型循环  ipairs遇到nil会break pairs不会
  arr2={'f','u','c','k'}
  for key,value in ipairs(arr2)
  do
  print(key..':'..value)
  end


 --模块测试
   require("mod")
   print(module.constant)

   module.fun1()

   module.fun3()




