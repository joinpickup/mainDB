cd ./code/tables
for filename in *; do
    docker exec -it database psql -U user -d pickup -f /var/lib/postgresql/my_tables/$filename
done

cd ../sprocs
for folder in *; do
    cd $folder
    for filename in *; do
        docker exec -it database psql -U user -d pickup -f /var/lib/postgresql/my_sprocs/$folder/$filename
    done
    cd ..
done