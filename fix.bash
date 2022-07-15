while getopts v: flag
do
    case "${flag}" in
        v) version=${OPTARG};;
    esac
done

migrate -path db/migrations -database "postgresql://acohen:AVNS_vb7jYz-bj-sX026J77V@pickup-do-user-11994297-0.b.db.ondigitalocean.com:25060/maindb?sslmode=require" force $version
