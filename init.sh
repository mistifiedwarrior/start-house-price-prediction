#!/bin bash

say "Task started"
echo "Cloning UI..."
git clone https://github.com/mistifiedwarrior/housePricePredictionUI.git ui
cd ui || exit
echo "Installing dependencies..."
npm install > /dev/null
echo "Start building..."
npm run build > /dev/null
mv ui/build/* .

echo "cloning ML model"
git clone https://github.com/mistifiedwarrior/house_price_prediction.git ml
echo "Task Completed"
say "Task Completed"


