# SPKI
**只有在所有文档最终定稿后，才会在 Arweave 上托管静态网站。**

**从 0.0.1-beta 版本开始，本项目已发展成为 Web 2.0 和 Web 3.0 的混合体。**

[English version/英文版本](https://github.com/Chewhern/SPKI/blob/main/README.md)
一个简单的用户对用户 PKI 全栈原型，使用 C# 实现。

这是一个CA + 信任网络 + GPG 的原型应用程序。

我没有时间做一些清理工作，澄清一些使用 AGPL 许可证造成的困惑。等我有时间了再做。

不确定这是否有用，但这里有视频链接。[点击我](https://space.bilibili.com/3537114994051579/lists/4746992?type=series)\
最好还是观看油管的毕竟我的早期B站账号已经注销了。

**Note:**
```
此Bilibili播放列表最初是为以太坊基金会的拨款申请而准备的。虽然该申请未被选中，但这些视频仍然是展示 SPKI 核心设计和功能的宝贵资源。
```

我可能遗漏了一些信息。如有不明白，请随时提问。

如果你要看版本更新，请看[这里](https://github.com/Chewhern/SPKI/blob/main/ChangeLog_CN.md)。

# SPKI 许可证要求
如果您重复使用或分发此项目（无论是否修改），都必须通过引用或链接到此 GitHub 仓库来明确注明作者。

# SPKI 许可证排除条款

[加密自定义](https://github.com/Chewhern/SPKI/blob/main/Cryptography_Customization_CN.md)

# SPKI 衍生作品注意事项
直接使用未经修改的作品将不被视为衍生作品。但是，如果您想确认，请联系作者进行确认。

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
