#Requires AutoHotkey v2.0


#include <cimgui>

; 初始化cimgui
cimgui.Init()

; 主循环
loop {
    ; 开始新帧
    cimgui.NewFrame()
    
    ; 创建窗口
    if (cimgui.Begin("简单界面")) {
        ; 添加文本
        cimgui.Text("欢迎使用cimgui!")
        
        ; 添加按钮
        if (cimgui.Button("点击我")) {
            MsgBox("按钮被点击了!")
        }
        
        ; 结束窗口
        cimgui.End()
    }
    
    ; 渲染
    cimgui.Render()
    
    ; 处理事件
    if (!cimgui.WaitForEvents())
        break
}

; 清理
cimgui.Shutdown()

