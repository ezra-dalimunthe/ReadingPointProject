#!/bin/bash

# dockerize AuthService
ROOT=$(pwd)

echo -e "dockerize AuthService"
cd $ROOT/AuthService
docker-compose up --build -d 
docker exec -it reading-point-auth-app-service composer install


echo -e "dockerize BookService"
cd $ROOT/BookService
docker-compose up --build -d 
docker exec -it reading-point-book-app-service composer install

echo -e "dockerize MemberService"
cd $ROOT/MemberService
docker-compose up --build -d 
docker exec -it reading-point-member-app-service composer install

echo -e "dockerize BorrowService"
cd $ROOT/BorrowService
docker-compose up --build -d 
docker exec -it reading-point-borrow-app-service composer install


echo -e "dockerize ReadingPointWebFrontEnd"
cd $ROOT/ReadingPointWebFrontEnd

npm install 

# SET URL FOR EACH SERVICE
export VUE_APP_AUTH_SERVICE_URL=http://127.0.0.1:8901
export VUE_APP_BOOK_SERVICE_URL=http://127.0.0.1:8902
export VUE_APP_MEMBER_SERVICE_URL=http://127.0.0.1:8903
export VUE_APP_BORROW_SERVICE_URL=http://127.0.0.1:8904

# FOR REAL-WORLD APP, YOU NEED TO SET UP WITH DOMAIN NAME
# eg: 
# export VUE_APP_AUTH_SERVICE_URL=http://reading-point.com:8901
# export VUE_APP_AUTH_SERVICE_URL=http://reading-point.com:8902
# ..etc
# OR IF THE SERVICES SET UP TO USE API GATEWAY, SET SOMETHING LIKE
# export VUE_APP_AUTH_SERVICE_URL=http://reading-point.com/authsvc
# export VUE_APP_BOOK_SERVICE_URL=http://reading-point.com/booksvc

npm run build 

docker-compose up --build -d 

unset VUE_APP_AUTH_SERVICE_URL
unset VUE_APP_BOOK_SERVICE_URL
unset VUE_APP_MEMBER_SERVICE_URL
unset VUE_APP_BORROW_SERVICE_URL

echo -e ""
echo -e "Run setup-app.sh to complete the installation"
echo -e "Make sure the docker db for each services is running first"
