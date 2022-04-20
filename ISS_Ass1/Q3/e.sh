#!/bin/bash
read -p "file:" file
function countofrepetition()
{
    awk'
    BEGIN { FS="[^A-zA-Z]+"}
    {
        for(i=1;i<NF;i++)
        {
            input=$i
            arr[input]++
        }
    }
    END
    {
        for(words in arr)
        {
            if(arr[words]>1)
            printf("word: %s - count of repetition: %d\n",words,arr[works])
        }
    } '
}
cat $file | countofrepetition