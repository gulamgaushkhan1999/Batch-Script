set month=Jan
xcopy Y:\Vrinda\JENKINS_DO_NOT_DELETE\Input C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\Input /E /Y
xcopy Y:\Vrinda\JENKINS_DO_NOT_DELETE\PREVIOUS_MONTH_REPORT C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\PREVIOUS_MONTH_REPORT /E /Y
Echo Yes |for /r "C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\PREVIOUS_MONTH_REPORT\%month%\SBI\" %%x in (*.xlsx) do move "%%x" "C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\PREVIOUS_MONTH_REPORT\Jan\SBI"
del /q "C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\PREVIOUS_MONTH_REPORT\Jan\SBI:\*"
FOR /D %%p IN ("C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\PREVIOUS_MONTH_REPORT\Jan\SBI\*.*") DO rmdir "%%p" /s /q
call "C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\excel.bat"
call xcopy C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\REPORT Y:\Vrinda\JENKINS_DO_NOT_DELETE\MONTHLY_EXCEL_REPORTS /E /Y

::call "C:\Users\Apmosys\Desktop\NodeConncetion\workspace\RPANEW\RPA\RPA_REPORT.bat"
