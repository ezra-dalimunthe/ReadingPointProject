#!/bin/bash

# build database AuthService
echo -e "build database AuthService"
docker exec -it reading-point-auth-app-service php artisan migrate
docker exec -it reading-point-auth-app-service php artisan db:seed


echo -e "build database BookService"

docker exec -it reading-point-book-app-service php artisan migrate
docker exec -it reading-point-book-app-service php artisan db:seed

echo -e "build database MemberService"

docker exec -it reading-point-member-app-service php artisan migrate
docker exec -it reading-point-member-app-service php artisan db:seed

echo -e "build database BorrowService"

docker exec -it reading-point-borrow-app-service php artisan migrate
docker exec -it reading-point-borrow-app-service php artisan db:seed

