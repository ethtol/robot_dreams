##!/bin/bash
########################################################################
## Create Firebase project, database, rule and etc using firebase cli ##
########################################################################
(echo -e "[0x42]\n"; echo "$fb_env"; sleep 10; echo "$fb_env"; sleep 10; echo "$fb_env"; sleep 30; echo -e "\n"; sleep 5; echo No; sleep 5; echo No; sleep 10; echo -e "\n";) | firebase init hosting --token $firebase_token && (echo y; sleep 10; echo y; sleep 10; echo -e "\n"; sleep 15; echo database.rules.json; sleep 10; echo n;) | firebase init database --token $firebase_token && firebase apps:create WEB $fb_env --project $fb_env --token $firebase_token && firebase apps:sdkconfig --project $fb_env --token $firebase_token > firebaseconfig.txt && firebase deploy --token $firebase_token                
