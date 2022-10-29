if ! [[ $count =~ ^[0-9]+$ ]] ; then
    export count=0
fi

echo $count




if [ $count -le 1000 ]; then
        echo $count
    count=$(echo "$count+1" | bc)
    echo $count
    #cd  /home/ubuntu/prepare/PREPARE-backend
    #node app.js 
    #this will run if started from the same folder
fi


a=1
counter=1
        while [ $counter -le 10000 ]
        do
                echo $counter
                counter=$(($counter+$a))
                cd  ./PREPARE-backend
                node app.js >>app.log
        done
echo All done

echo "This will be printed only when the tenth instance of script is reached"
