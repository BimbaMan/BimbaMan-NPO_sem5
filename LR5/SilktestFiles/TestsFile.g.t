[ ] 
[+] // *** DATA DRIVEN ASSISTANT Section (!! DO NOT REMOVE !!) ***
	[ ] use "datadrivetc.inc"
	[ ] use "TestsFile.t"
	[ ] 
	[ ] // *** DSN ***
	[ ] STRING gsDSNConnect = "DSN=Silk DDA Excel;DBQ=Z:\DDT.xls;UID=;PWD=;"
	[ ] 
	[ ] // *** Global record for each testcase ***
	[ ] 
	[-] type REC_DATALIST_DD_UnpackArchiveTest1 is record
		[ ] REC_Лист1_ recЛист1_  //Лист1$, 
	[ ] 
	[ ] // *** Global record for each Table ***
	[ ] 
	[-] type REC_Лист1_ is record
		[ ] STRING SEARCH  //SEARCH, 
	[ ] 
	[ ] // *** Global record containing sample data for each table ***
	[ ] // *** Used when running a testcase with 'Use Sample Data from Script' checked ***
	[ ] 
	[-] REC_Лист1_ grTest_Лист1_ = {...}
		[ ] "TestFolderUnpackTest1" // SEARCH
	[ ] 
	[ ] // *** End of DATA DRIVEN ASSISTANT Section ***
	[ ] 
[-] testcase DD_UnpackArchiveTest1 (REC_DATALIST_DD_UnpackArchiveTest1 rData)
	[-] recording
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").SetActive ()
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").CustomWin("[7-Zip::Panel]#1|$1000").ListView("#1|$1001").Select ("TestFolder.7z")
		[ ] MainWin("Z:\|$C:\Program Files\7-Zip\7zFM.exe").ToolBar("#1|$0").PushButton("Извлечь|$1071").Click ()
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").SetActive ()
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetPosition (1, 12)
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").TextField("Распаковать в:|$130").SetText (rData.recЛист1_.SEARCH)
		[ ] DialogBox("Извлечь : Z:\TestFolder.7z").PushButton("OK|$1").Click ()
