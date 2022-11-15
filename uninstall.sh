#!/bin/bash

# remove docker AuthService
ROOT=$(pwd)


echo -e "remove docker BorrowService"
cd $ROOT/BorrowService
docker-compose down -v

echo -e "remove docker BookService"
cd $ROOT/BookService
docker-compose down -v

echo -e "remove docker MemberService"
cd $ROOT/MemberService
docker-compose down -v

echo -e "remove docker AuthService"
cd $ROOT/AuthService
docker-compose down -v


echo -e "remove docker ReadingPointWebFrontEnd"
cd $ROOT/ReadingPointWebFrontEnd

docker-compose down -v
cd $ROOT/