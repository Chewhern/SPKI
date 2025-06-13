# SPKI
一个简单的用户对用户 PKI 全栈原型，使用 C# 实现。

这是一个CA + 信任网络 + GPG 的原型应用程序。

## 所需组件/环境

[下载 Dotnet 8.0 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

客户端设备需要分辨率为**1920 x 1080**的桌面环境。

如果你在Linux(Ubuntu)上，则需要执行**apt install dotnet-sdk-8.0**。 如果不能够执行，那么就得依赖Windows来编译。

### 编译应用程序（在 Windows 上使用 Visual Studio）
1. 导航到包含“.csproj”文件的源代码文件夹。
2. 点击该文件。
3. 在 Visual Studio 中右键单击“.csproj”文件，然后点击“构建”。
4. 应用程序将驻留在“bin/debug”目录中。

### 编译应用程序（在 MacOS/Linux 上）
1. 使用命令提示符/终端/控制台导航到包含“.csproj”文件的源代码文件夹。
2. 执行 **dotnet build**
3. 应用程序将驻留在“bin/debug”目录中。

### 编译客户端应用程序
1. 导航至单个客户端应用程序的两个源代码文件夹。
2. 在不带“.Desktop”文件的客户端应用程序上构建。
3. 在带“.Desktop”文件的客户端应用程序上构建。
4. 客户端应用程序将驻留在“.Desktop”文件夹中。
5. 导航至“bin/debug”。

### 运行已编译的应用程序 (On Windows)
1. 请导航到相应的文件夹并双击“.exe”。

### 运行已编译的应用程序 (On MacOS/Linux)
1. 请导航到相应的文件夹并执行**dotnet app.dll**

#### 托管和部署服务器应用程序 (Web API)
[点击这里](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/linux-nginx?view=aspnetcore-9.0&tabs=linux-ubuntu#monitor-the-app)

1. 按照相应步骤操作。
2. 将“用户”更改为对已编译的 Web API 服务器应用程序具有权限的用户。
3. 无视
```
Colon (:) separators aren't supported in environment variable names. Use a double underscore (__) in place of a colon. The Environment Variables configuration provider converts double-underscores into colons when environment variables are read into configuration. In the following example, the connection string key ConnectionStrings:DefaultConnection is set into the service definition file as ConnectionStrings__DefaultConnection:

Console

Copy
Environment=ConnectionStrings__DefaultConnection={Connection String}
Save the file and enable the service.
```
4. 把**systemctl**完成就可以了。

### 托管和部署控制台/终端服务器应用程序
请参考 Linux 上的 **cronjob** 或 **crontab** 教程（视频或 LLM）。

#### 在服务器应用程序上配置 program.cs (Web API)
如果出现无法启动服务器应用程序的错误，特别是**ML 和 TL** 服务器应用程序，请删除类似这样的内容
```
app.Lifetime.ApplicationStarted.Register(() =>
{
    Console.WriteLine("App has started.");
    // Your code here
});
```
or
```
lifetime.ApplicationStarted.Register(() =>
{
    Console.WriteLine("App has started.");
    // Your code here
});
```

#### 配置 ONodeInformation.txt 和 PNodeInformation.txt
对于 **ONodeInformation.txt**，您需要获取其他顶级节点的公共或私有 Web API 服务器的应用程序 IP 地址。

这适用于 TL 服务器应用程序。
