#!/bin/bash                                                                                                  

source err.sh

function check_args() {
  if [[ ! -d "$1" ]]; then
    print_err 1
    exit 1
  fi

  if [[ ! "$2" =~ ^[0-9]{1,2}$ ]]; then
    print_err 2
    exit 1
  fi

  if [[ ! "$3" =~ ^[a-zA-Z]{1,7}$ ]]; then
    print_err 3
    exit 1
  fi

  if [[ ! "$4" =~ ^[0-9]{1,2}$ ]]; then
    print_err 4
    exit 1
  fi

  if [[ ! "$5" =~ ^[a-zA-Z]{1,7}[.][a-zA-Z]{1,3}$ ]]; then
    print_err 5
    exit 1
  fi

  if [[ ! "$6" =~ ^[0-9]{1,2}kb$ ]]; then
    print_err 6
    exit 1
  fi

}
