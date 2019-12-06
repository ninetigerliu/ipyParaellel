@Echo off
:: This is for start a jupyter notebook with ipyParallel
:: author xiao liu
:: first argument is the engineNumber
setlocal
echo ---------------- Starting ipcluster -----------------
set engineNumber=%1
call C:\Anaconda3x64\Scripts\activate.bat C:\Anaconda3x64
ipcluster start -n %engineNumber%
endlocal