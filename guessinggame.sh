touch myfile
count=1
flag=0
while [$flag -ne 2]
do
    echo Guess the number of files in the repository: 
    read response
    flag=count_files
done


count_files()
{
    if [$response -gt $count]
    then
        flag=0
        echo too high
    elif [$response -lt $count]
    then
        flag=1
        echo too low
    else
        flag=2
        echo congratulations!!
    fi
    
    return flag
}
