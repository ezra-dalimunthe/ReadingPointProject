#!/bin/bash

VUE_APP_AUTH_SERVICE_URL=http://127.0.0.1:8901
VUE_APP_BOOK_SERVICE_URL=http://127.0.0.1:8902
VUE_APP_MEMBER_SERVICE_URL=http://127.0.0.1:8903
VUE_APP_BORROW_SERVICE_URL=http://127.0.0.1:8904

echo -e "Check Database for AuthService: "
curl $VUE_APP_AUTH_SERVICE_URL/dbcheck
echo -e ""
echo -e "Check Database for Book Service: "
curl $VUE_APP_BOOK_SERVICE_URL/dbcheck
echo -e ""

echo -e "Check Database for Member Service: "
curl $VUE_APP_MEMBER_SERVICE_URL/dbcheck
echo -e ""

echo -e "Check Database for Borrow Service: "
curl $VUE_APP_BORROW_SERVICE_URL/dbcheck
echo -e ""