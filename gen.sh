COUNT=0
while read line; do
    #echo $line
    cp ./crashes/$line ${COUNT}.bmp

    echo "["$COUNT"]"
    ./bmp2tiff ${COUNT}.bmp out.tiff
     
    rm -rf ${COUNT}.bmp 
    COUNT=`expr $COUNT + 1`
done < $1
