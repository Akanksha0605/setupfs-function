#!/bin/sh



if $1 in 

#to see s3 bucket
	aws s3 ls
  
		echo "$1"
fi
then
    echo "Missing arguments!"
        echo "Use -s -c or -l with proper arguments"
    exit 1
fi

case "$1" in
        "-s")
                echo "Device initialization"
                sudo fallocate -l $3 /var/tmp/$2
                ;;
        "-c")
                echo "File type initialization and mounting"
                sudo /sbin/mkfs -t $2 -q /var/tmp/$3
                sudo mount -o loop /var/tmp/$3 /mnt
                ;;
        "-l")
                echo "File types"
		sudo blkid -t TYPE=$2
	        ;;
        *)
                echo "Enter correct arguments"
		;;
esac
exit 0

