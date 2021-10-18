#include <MsgBoxConstants.au3>

#RequireAdmin
AutoItSetOption('MouseCoordMode', 0)

BlockInput(1)
SplashOff()

Run(@ScriptDir & "\winrar.exe")

WinWaitActive("WinRAR 6.02 (русская 64-разрядная версия)", "&Обзор...")

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
