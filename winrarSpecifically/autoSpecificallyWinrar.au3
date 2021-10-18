#include <MsgBoxConstants.au3>

#RequireAdmin
AutoItSetOption('MouseCoordMode', 0)

BlockInput(1)
SplashOff()

Run(@ScriptDir & "\winrar.exe")

WinWaitActive("WinRAR 6.02 (русская 64-разрядная версия)", "&Обзор...")
MouseClick('primary', 454, 131, 1, 0)

WinWaitActive("Обзор папок", "Выберите папку назначения")
MouseClick('primary', 98, 139, 1, 0)
Sleep(500)
MouseClick('primary', 110, 340, 1, 0)
Sleep(500)
MouseClick('primary', 115, 399, 1, 0)

ControlClick("Обзор папок", "Выберите папку назначения", "Button1")
SendKeepActive("[CLASS:SysTreeView32]")
Sleep(500)
Send('WinRAR{ENTER}')
Sleep(500)
ControlClick("Обзор папок", "Выберите папку назначения", "Button2")

WinWaitActive("WinRAR 6.02 (русская 64-разрядная версия)", "Установить")
ControlClick("WinRAR 6.02 (русская 64-разрядная версия)", "Установить", "Button2")

WinWaitActive("Настройка WinRAR", "OK")
ControlClick("Настройка WinRAR", "OK", "Button30")

WinWaitActive("Установка WinRAR", "Готово")
ControlClick("Установка WinRAR", "Готово", "Button1")

WinWaitActive("WinRAR", "Кнопки навигации")
MouseClick('primary', 867, 15, 1, 0)

BlockInput(0)
MsgBox(0, 'Installed', 'WinRAR was installed')

Exit
