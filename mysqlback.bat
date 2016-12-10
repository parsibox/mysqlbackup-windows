:: MySQl DB user
set dbuser=root

:: MySQl DB users password
set dbpass=

:: Switch to the MySQL data directory and collect the folder names
pushd "E:\wamp64\bin\mysql\mysql5.7.9\data"

:: Loop through the folders and use the fnames for the sql filenames, collects all databases automatically this way

echo "hello"

echo "Pass each name to mysqldump.exe and output an individual .sql file for each"

FOR /D %%F IN (*) DO (
"E:\wamp64\bin\mysql\mysql5.7.9\bin\mysqldump.exe" --user=%dbuser% --password=%dbpass% --databases %%F > "C:\SQLBackup\%%F.sql"
)
