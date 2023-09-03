# step 1 - Inisiasi variabel
path=/hdfs/data/data1 
name_of_directory=data1 
dir=$path/$name_of_directory

#step 2 - Penentuan Kondisi
if [ -d $dir]: then
    echo "There is ${name_of_directory}. Directory Exists!"
else
    echo ${name_of_directory} Directory Not Exists!
    mkdir $dir
    exit 1
fi




