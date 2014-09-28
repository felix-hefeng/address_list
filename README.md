#### 安装方法
1. 下载代码
	* git clone https://github.com/felix-hefeng/address_list.git
2. bundle install
3. 数据库设置
	* rake db:create
	* rake db:migrate
4. 启动服务
	* rails s

#### 自动化测试
1.  rspec 测试
	* rspec spec/controllers/*
2.  cucumber
	* rake cucumber
	
#### API接口
1. 由mobile获取用户信息
	* 路径： "/api/users/:mobile"
	* 参数：mobile (string, required)
	* 返回值：
		* status: true/false
		* name
		* mobile
		* address
		* department
		* position
	* 返回值示例：
		* {"status":true,"user":{"name":"Felix","mobile":"18551295873","address":"Changle Road","department":"hrhr","position":"manager"}}
2. 由部门名获取通讯录
	* 路径："/api/department/:name/users"
	* 参数：name (string, required)
	* 返回值：
		* status: true
		* users
		
#### TODO
1. 样式调整
2. API接口的安全和异常处理，以及测试编写