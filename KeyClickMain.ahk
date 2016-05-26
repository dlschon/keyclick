#SingleInstance force



kcEnabled := 0

AppsKey::
	if (kcEnabled = 0)
	{
		kcEnabled := 1
		Run C:\Projects\KeyClick\KeyClickWorker.ahk
		Run C:\Projects\KeyClick\ToastEnable.ahk
	}
	else
	{
		kcEnabled := 0
		Run C:\Projects\KeyClick\ToastDisable.ahk
	}
Return