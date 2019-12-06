@Echo off
:: This is for start a jupyter notebook with ipyParallel
:: author xiao liu
setlocal
set currentDir=D:\PythonProjects\ipyParaellel
set engineNumber=6
REM %windir%\System32\cmd.exe "/K" C:\Anaconda3x64\Scripts\activate.bat C:\Anaconda3x64
start "ipCluster" cmd /c startIPCluster.bat %engineNumber%
REM C:\Anaconda3x64\python.exe C:\Anaconda3x64\cwp.py C:\Anaconda3x64 C:\Anaconda3x64\python.exe C:\Anaconda3x64\Scripts\jupyter-notebook-script.py %currentDir%
call C:\Anaconda3x64\Scripts\activate.bat C:\Anaconda3x64
cd %currentDir%
jupyter notebook MainTest.ipynb

:: run a jupyter notebook
REM jupyter nbconvert --to notebook --inplace --execute MatplotExample.ipynb

endlocal
