
--定义一个module

module={}

module.constant="这是一个常量"

function module.fun1()
print("这是共有方法fun1")
end



local function fun2()
print("这个是是私有方法")
end



function module.fun3()
print("这个是共有方法fun2")
end

return module
