#!/bin/bash
# connecting to database
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
# display service name
echo -e "\n~~~ salon shop ~~~\n"
# setting service menu 
MAIN_MENU () {
  # get services
  SERVICE_LIST=$($PSQL "SELECT service_id,name FROM services;")
  # if service empty display not available message
  if [[ -z "$SERVICE_LIST" ]]
  then
    echo -e "\n Service is temporarily not available\n"
  # else show services
  else
    echo -e "\nServices we Offer...\n"
    echo "$SERVICE_LIST" | while read SERVICE_ID BAR SERVICE
    do
      echo "$SERVICE_ID) $SERVICE"
    done
    echo select 4 to exit
  fi
  # take request from customer
  read SERVICE_ID_SELECTED
  case $SERVICE_ID_SELECTED in
    1) BOOKING_MENU;;
    2) BOOKING_MENU;;
    3) BOOKING_MENU;;
    4) EXIT;;
    *) MAIN_MENU "Please do select correct option" ;;
  esac
  #if picked wrong number show menu again
  
  
  # else take customer details
}

BOOKING_MENU () {
  #if ficked non existent service 
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    #send to service menu
    MAIN_MENU "Please select a valid number."
  else
    #get service 
    SERVICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED;")
    #request for number
    echo "Please do enter your Phone Number"
    read CUSTOMER_PHONE
    
    #using this details find the customer_id
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE';")
    if [[ -z "$CUSTOMER_NAME" ]]
    then
      # request for name
    echo "Please do enter your name"
    read CUSTOMER_NAME
    CUSTOMER_ADD=$($PSQL "INSERT INTO customers(phone,name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME');")
    fi
    #Get customer id
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")
    # get service time
    echo "Please do enter service time"
    read SERVICE_TIME
    #generate appointment id
    INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME');")
    # get appointment id
    APPOINTMENT_ID=$($PSQL "SELECT appointment_id FROM appointments WHERE customer_id=$CUSTOMER_ID AND service_id=$SERVICE_ID_SELECTED AND time='$SERVICE_TIME';")
    
    echo -e "\nI have put you down for a $(echo $SERVICE | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')."
  fi
  
}
EXIT () {
  echo "exit"
}
MAIN_MENU