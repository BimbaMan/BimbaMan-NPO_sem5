﻿[-] testcase MenuButtonsTest ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Добавить|$1070").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("7-Zip|$MessageBox").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("7-Zip|$MessageBox").Close ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Извлечь|$1071").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("7-Zip|$MessageBox").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("7-Zip|$MessageBox").Close ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Копировать|$546").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Копировать").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Копировать").Close ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Переместить|$547").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Переместить").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Переместить").Close ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Удалить|$548").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Информация|$551").Click ()
[-] testcase OpenArchiveTest1 ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").DoubleSelect ("TestFolder.7z")
		[ ] MainWin("Z:\TestFolder.7z\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").DoubleSelect ("TestFolder")
[-] testcase UnpackArchiveTest1 ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").Select ("TestFolder.7z")
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Извлечь|$1071").Click ()
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").SetActive ()
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetPosition (1, 12)
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetText ("TestFolderUnpackTest1")
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").PushButton("OK|$1").Click ()
[-] testcase PackFolderTest ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").Select ("TestFolder")
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Добавить|$1070").Click ()
		[ ] DialogBox("Добавить к архиву").SetActive ()
		[ ] DialogBox("Добавить к архиву").PushButton("OK|$1").Click ()
[-] testcase CreateFolderAndPack ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").Menu("Файл").MenuItem("Создать Папку|$555").Pick ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Создать папку").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").DialogBox("Создать папку").PushButton("OK|$1").Click ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Добавить|$1070").Click ()
		[ ] DialogBox("Добавить к архиву").SetActive ()
		[ ] DialogBox("Добавить к архиву").PushButton("OK|$1").Click ()
[-] testcase OpenArchiveTest2 ()
	[-] recording
		[ ] DialogBox("Program Manager").SetActive ()
		[ ] DialogBox("Program Manager").ListView("#1|$1").DoubleSelect ("Shortcut to My Computer")
		[ ] DialogBox("My Computer").SetActive ()
		[ ] DialogBox("My Computer").CustomWin("[DUIViewWndClassName]#1|$0").CustomWin("[DirectUIHWND]#1|$0").CustomWin("[CtrlNotifySink]#1|$0").ListView("#1|$1").DoubleSelect ("Lr5 on 'VBoxSvr' (Z:)")
		[ ] DialogBox("Lr5 on 'VBoxSvr' (Z:)[1]").CustomWin("[DUIViewWndClassName]#1|$0").CustomWin("[DirectUIHWND]#1|$0").CustomWin("[CtrlNotifySink]#1|$0").ListView("#1|$1").DoubleSelect ("TestFolder.7z")
		[ ] MainWin("Z:\TestFolder.7z\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\TestFolder.7z\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").DoubleSelect ("TestFolder")
[-] testcase UnpackArchiveTest2 ()
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").Select ("TestFolder.7z;1 351;2022-12-01 15:53;2022-11-30 16:37;;;")
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").Click (2, 9, 109)
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").PopupSelect (87, 44, "7-Zip/Распаковать")
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").SetActive ()
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetPosition (1, 12)
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetText ("TestFolderUnpackTest2")
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").PushButton("OK|$1").Click ()
