@echo off

where sqlite3>nul 2>nul
if %ERRORLEVEL% NEQ 0 ( echo ������� sqlite3 �� ������� & pause & exit ) 
echo create table if not exists task01 (User varchar(10), Date text default current_timestamp); | sqlite3 task01.db
echo insert into task01 values('%USERNAME%', datetime('now', 'localtime')); | sqlite3 task01.db

echo ��� �ணࠬ��: %~nx0
echo|<nul set /p="������⢮ ����᪮�: "
echo select count(*) from task01; | sqlite3 task01.db
echo|<nul set /p="���� �����: "
echo select Date from task01 order by Date asc limit 1; | sqlite3 task01.db

echo.
echo select * from task01; | sqlite3 -table task01.db
echo. 

pause