--协同程序

--[[
   关于协同程序，协同程序和线程很像，只是同步了多行程；在任意时刻
   只有一个协同程序在运行


--协同程序的创建 coroutine.create(),和coroutine.resume()配合使用代表唤醒函数调用
coroutine.create()

--重启coroutine。和create配合使用    coroutine.resume(c,"haha")
coroutine.resume()

--挂起coroutine，将coroutine设置为挂起状态
coroutine.yield()

--查看coroutine的状态，dead,suspend,runing ,传入coroutine
coroutine.status()

--创建coroutine，返回一个函数，一旦调用了这个函数，就进入了coroutine，和create功能重复
coroutine.wrap()

--返回正在跑的coroutine，一个coroutine就是一个线程，当使用running的时候，就是返回一个coroutine的线程好
coroutine.running()

--]]


-- coroutine.create和 coroutine.resume的配合

  c=coroutine.create(
   function(i)
   print("create function "..i)
   end
  )

  coroutine.resume(c,"haha")


  --test2
  c2=coroutine.create(
    function(i)
	print(type(i))
	end

  )
  coroutine.resume(c2,true)

  --wrap
  c3=coroutine.wrap(
  function(h)
  print('wrap'..h)
  end
  )
  c3("heyi")


   --coroutine.status  coroutine.running  coroutine.yield
   --coroutine.running() 可以看出，coroutine在底层实现的是一个线程
   c4=coroutine.create(
   function()
   for i=1,10
   do
   print(i)
   if i==3
   then
    print(coroutine.status(c4))
	print(coroutine.running())
	 coroutine.yield()
   end

   end
   end
   )

   coroutine.resume(c4)

   --挂起状态  suspended
   print(coroutine.status(c4))

   --第二次就让其恢复执行
   coroutine.resume(c4)



   --coroutine.yield(coroutine,x,y)的使用，resume和yield的配合强大之处在于，
   --resume处于主程中，它将外部状态（数据）传入到协同程序内部；
   --而yield则将内部的状态（数据）返回到主程中。多值返回

   c5=coroutine.create(
   function(x)
   print('the x is'..x)
   coroutine.yield(x*2)
   end
   )

   cc,va = coroutine.resume(c5,4)
   print(cc)
   print(va)





