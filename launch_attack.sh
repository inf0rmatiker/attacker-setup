#!/bin/bash

function print_usage {
  echo -e "\n\tUsage: ./launch_attack.sh <num_attackers> <command>\n"
}

if [[ $# -ge 2 ]]; then

  NUM_ATTACKERS=$1
  COMMAND=$2


  case $NUM_ATTACKERS in

    "1")
      echo -e "Running attack just from attacker 1...\nCommand: $COMMAND"
      eval $COMMAND
      ;;

    "2")
      echo -e "Running attack from attackers 1 and 2...\nCommand: $COMMAND"
      ssh -i $ATTACKER_2_KEY $ATTACKER_2 $COMMAND &
      eval $COMMAND
      ;;

    "3")
      echo -e "Running attack from attackers 1, 2, and 3...\nCommand: $COMMAND"
      ssh -i $ATTACKER_2_KEY $ATTACKER_2 $COMMAND &
      ssh -i $ATTACKER_3_KEY $ATTACKER_3 $COMMAND &
      eval $COMMAND
      ;;

    *)
      echo Max 3 attackers.
      ;;

    esac
    
    
else
  print_usage
fi
