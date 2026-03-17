# SPKI
**Only when the documentations had been finalized, there'll be a static website hosted on Arweave.**

**This project had became a hybrid of web 2.0 and web 3.0 starting from 0.0.1-beta**

[Chinese version/中文版本](https://github.com/Chewhern/SPKI/blob/main/README_CN.md)

A simple user to user PKI full stack prototype with C#.

This is a prototype CA + web of trust + GPG application.

I don't have time to do some cleaning and clarify some confusions caused by using AGPL license. I will do so when I have time. 

Not sure if this's helpful but here's video link. [Click me](https://www.youtube.com/playlist?list=PLCCjQamH_8r0-gvWvXs_joqkTMGI-SXqz)

**Note:**
```
This YouTube playlist was originally prepared for an Ethereum Foundation grant submission. Although that application was not selected, the videos remain a valuable resource to showcase SPKI’s core design and functionality.
```

I might miss some information. Do ask if you don't understand.

For changelog, kindly [refer here](https://github.com/Chewhern/SPKI/blob/main/ChangeLog.md).

# SPKI License requirements
If you reuse or distribute this project (with or without modification), you must provide visible credit to the author via a reference or link to this GitHub repository.

# SPKI License exclusions

[Cryptography Customization](https://github.com/Chewhern/SPKI/blob/main/Cryptography_Customization.md)

# SPKI Derivative work consideration
Using the work as it's without modification won't be count as derivative work. However, if you do want to be sure, kindly contact the author for clarification. 

## Components/Environment required

[Download Dotnet 8.0 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

Client device requires a desktop environment with resolution of **1920 x 1080**.

On Linux(Ubuntu), you need to execute **apt install dotnet-sdk-8.0**. If such execution was not possible then you can use Windows to compile and deploy on Linux.

### Building applications (On Windows with Visual Studio)
1. Navigate to the source code folder whereby there's ".csproj" inside.
2. Click on the file.
3. Right click on the ".csproj" file inside visual studio and click on "build".
4. The application will reside in "bin/debug".

### Building applications (On MacOS/Linux)
1. Navigate to the source code folder whereby there's ".csproj" inside with command prompt/terminal/console.
2. Do **dotnet build**
3. The application will reside in "bin/debug".

### Building client applications
1. Navigate to a single client's application's both source code folder.
2. Build on the client application without ".Desktop".
3. Build on the client application with ".Desktop".
4. The client application will reside within ".Desktop" folder.
5. Navigate to "bin/debug".

### Run compiled applications (On Windows)
1. Kindly navigate to the respective folder and double click on ".exe".

### Run compiled applications (On MacOS/Linux)
1. Kindly navigate to the respective folder and do **dotnet app.dll**

#### Host and deploy server applications (Web API)
[Click Here](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/linux-nginx?view=aspnetcore-9.0&tabs=linux-ubuntu#monitor-the-app)

1. Follow the steps accordingly.
2. Change the "User" to the user that has permission on compiled web api server application.
3. Ignore
```
Colon (:) separators aren't supported in environment variable names. Use a double underscore (__) in place of a colon. The Environment Variables configuration provider converts double-underscores into colons when environment variables are read into configuration. In the following example, the connection string key ConnectionStrings:DefaultConnection is set into the service definition file as ConnectionStrings__DefaultConnection:

Console

Copy
Environment=ConnectionStrings__DefaultConnection={Connection String}
Save the file and enable the service.
```
4. Finish until **systemctl**.

### Host and deploy console/terminal server applications
Kindly refer to **cronjob** or **crontab** tutorial on Linux either by video or by LLM.

#### Configuring program.cs on server applications (Web API)
If there's error unable to start the server applications especially for **ML and TL** server application, kindly remove something like this
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

#### Configuring ONodeInformation.txt and PNodeInformation.txt
For **ONodeInformation.txt**, you need to either get other top level node's public or private web API server's application IP address.\
This is catering to TL server application.

For **PNodeInformation.txt**, you need to get either one top level node's public or private web API server's application IP address.\
This is catering to ML server application.

#### Information on HasRunFirstTime.txt
Kindly remove the file from the server's file system. Let the server application creates it automatically.
