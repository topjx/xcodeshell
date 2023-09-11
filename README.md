# xcodeshell


```
https://cloud.tencent.com/developer/article/2236700

Xcode就是一个终端
Run Script，顾名思义，就是运行脚本的意思。由此可见，Xcode内部也是内置了一个终端环境的。
Xcode既然是一个终端，那么它就势必会使用到一些环境变量，Xcode终端环境使用的环境变量是如何定义的呢？Xcode会将生成产物所需要的各种参数（Build Settings中的各种参数），以定义shell环境变量的形式，定义在Xcode的Shell环境中（所谓的Shell环境，其实就是终端环境）。也就是说，Xcode工程中的BuildSettings中的各种参数其实就是Xcode的shell环境的环境变量。

Xcode会在编译的时候，将BuildSettings中配置的各种参数都导出为环境变量，提供给Xcode内置的Shell环境。
每一个终端的命令是可以定位到另外一个终端的，这个定位就是通过终端标识符来完成的。
每一个终端都有自己唯一的标识符，在对应的终端环境下输入tty，就可以获取到当前Shell环境的的唯一标识符，如下：
➜  ~ tty
/dev/ttys001
➜  ~

xcconfig文件简介
现在我想在终端中查看符号表信息，可以使用nm指令。
在终端输入如下指令来查看nm指令的作用：
➜  ~ man nm

如果我们现在想要查看某Xcode工程的构建产物的符号表信息，那么就需要依次手动执行如下操作：
①打开对应Xcode工程，Product->Show Build Folder In Finder 
②在Build文件夹下面，找到Products文件夹，然后找到对应环境对应设备下面的构建产物
③对构建产物右击，显示包内容，就可以找到对应可执行文件了
④在终端输入nm之后，将上一步找到的可执行文件拖入到终端
⑤回车执行指令，就可以看到对应的符号表信息了
```

