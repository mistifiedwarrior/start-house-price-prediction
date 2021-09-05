#!/bin bash

#say "Task started"
echo "Cloning UI..."
git clone https://github.com/mistifiedwarrior/housePricePredictionUI.git ui &> /dev/null
cd ui || exit
echo "Installing dependencies..."
npm install &> /dev/null
echo "Start building..."
npm run build &> /dev/null
mv build/* .

cd ..
echo "cloning ML model"
git clone https://github.com/mistifiedwarrior/house_price_prediction.git ml  &> /dev/null
echo "Task Completed"
#say "Task Completed"


