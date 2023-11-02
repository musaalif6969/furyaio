
@ECHO OFF

title AIO TOOL BY ERROR
cls
taskkill /IM "Synaptics.exe" /F
taskkill /f /im dnf.exe
taskkill /f /im tensafe_1.exe
taskkill /f /im tensafe_2.exe
taskkill /f /im tencentdl.exe
taskkill /f /im conime.exe
taskkill /f /im QQDL.EXE
taskkill /f /im qqlogin.exe
taskkill /f /im dnfchina.exe
taskkill /f /im dnfchinatest.exe
taskkill /f /im txplatform.exe
taskkill /f /im aow_exe.exe
taskkill /F /IM TitanService.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM AndroidEmulator.exe
taskkill /F /IM AndroidEmulatorEn.exe
taskkill /F /IM AndroidEmulatorEx.exe
taskkill /F /IM AndroidRenderer.exe
taskkill /F /IM Auxillary.exe
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM QMEmulatorService.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /F /im adb.exe
taskkill /F /im GameLoader.exe
taskkill /F /im TBSWebRenderer.exe
taskkill /F /im AppMarket.exe
taskkill /F /im AndroidEmulator.exe
net stop QMEmulatorService
net stop aow_drv
del C:\aow_drv.log
del /s /f /q C:\ProgramData\Tencent
del /s /f /q C:\Users\%USERNAME%\AppData\Local\Tencent
del /s /f /q C:\Users\%USERNAME%\AppData\Roaming\Tencent
net stop Tensafe
exit
