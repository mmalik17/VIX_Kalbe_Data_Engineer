# step 1 - Inisiasi variabel
path=/hdfs/data/data1 
name_of_directory=data1 
dir=$path/$name_of_directory
filename='daily_market_price.xlsx' #contoh nama file excel
#Inisiasi variabel direktori tujuan
source_dir=/local/data/market

#step 2 - Penentuan Kondisi
if [-d $dir]: then
    echo "There is ${name_of_directory}. Directory Exists!"
      cp $source_dir/$filename $path
      echo "File Moved Successfully"
else
    echo ${name_of_directory} Directory Not Exists!
    mkdir $dir
    exit 1
fi

