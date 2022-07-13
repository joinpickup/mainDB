SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# setup env
HOST=("database" "database-test")

for database in ${HOST[@]}; do
echo $database
    # setup databases that don't have dependencies
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/Place.sql
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/Role.sql
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/Sport.sql

    # type tables
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/ActivityType.sql
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/UserType.sql

    # setup user tables
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/User.sql
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/UserRole.sql

    # setup tabels dependent on user table
    docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_tables/Activity.sql

    # stored procedure
    cd $SCRIPT_DIR/code/functions
    for folder in *; do
        cd $folder
        for filename in *; do
            docker exec -it $database psql -U admin -d pickup -f /var/lib/postgresql/my_funcs/$folder/$filename
        done
        cd ..
    done

done