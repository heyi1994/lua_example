--Эͬ����

--[[
   ����Эͬ����Эͬ������̺߳���ֻ��ͬ���˶��г̣�������ʱ��
   ֻ��һ��Эͬ����������


--Эͬ����Ĵ��� coroutine.create(),��coroutine.resume()���ʹ�ô����Ѻ�������
coroutine.create()

--����coroutine����create���ʹ��    coroutine.resume(c,"haha")
coroutine.resume()

--����coroutine����coroutine����Ϊ����״̬
coroutine.yield()

--�鿴coroutine��״̬��dead,suspend,runing ,����coroutine
coroutine.status()

--����coroutine������һ��������һ������������������ͽ�����coroutine����create�����ظ�
coroutine.wrap()

--���������ܵ�coroutine��һ��coroutine����һ���̣߳���ʹ��running��ʱ�򣬾��Ƿ���һ��coroutine���̺߳�
coroutine.running()

--]]


-- coroutine.create�� coroutine.resume�����

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
   --coroutine.running() ���Կ�����coroutine�ڵײ�ʵ�ֵ���һ���߳�
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

   --����״̬  suspended
   print(coroutine.status(c4))

   --�ڶ��ξ�����ָ�ִ��
   coroutine.resume(c4)



   --coroutine.yield(coroutine,x,y)��ʹ�ã�resume��yield�����ǿ��֮�����ڣ�
   --resume���������У������ⲿ״̬�����ݣ����뵽Эͬ�����ڲ���
   --��yield���ڲ���״̬�����ݣ����ص������С���ֵ����

   c5=coroutine.create(
   function(x)
   print('the x is'..x)
   coroutine.yield(x*2)
   end
   )

   cc,va = coroutine.resume(c5,4)
   print(cc)
   print(va)





