
--����һ��module

module={}

module.constant="����һ������"

function module.fun1()
print("���ǹ��з���fun1")
end



local function fun2()
print("�������˽�з���")
end



function module.fun3()
print("����ǹ��з���fun2")
end

return module
