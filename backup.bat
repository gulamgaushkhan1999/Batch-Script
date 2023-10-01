@echo off

xcopy /Y "C:\Users\GulamGaush Khan\Desktop\Accops_Task\Live\project" "C:\Users\GulamGaush Khan\Desktop\Accops_Task\Backup\project" /E/H/C/I

RD /s /q "C:\Users\GulamGaush Khan\Desktop\Accops_Task\Live\project"

MD "C:\Users\GulamGaush Khan\Desktop\Accops_Task\Live\project"