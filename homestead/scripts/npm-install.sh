#!/usr/bin/env bash
NAME=$1
TYPE=$2
THEME=$3
NAME_EXT="$NAME.dev"


case $TYPE in
  'laravel')
  DIR="/home/vagrant/sites/$NAME_EXT"
  ;;
  'wordpress')
  DIR="/home/vagrant/sites/$NAME_EXT/web/app/themes/$THEME"
  ;;
  'drupal')
  DIR="/home/vagrant/sites/$NAME_EXT"
  ;;
  'HTML')
  DIR="/home/vagrant/sites/$NAME_EXT"
  ;;
  'silex')
  DIR="/home/vagrant/sites/$NAME_EXT"
  ;;
esac
echo $DIR
if [ -f $DIR/package.json ]; then
    echo "Running npm install for $NAME"
    cd $DIR
    npm install
else
     echo "Cannot run npm install for $NAME. Need package.json file"
fi
