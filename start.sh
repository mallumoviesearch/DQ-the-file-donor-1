if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/azanhelpdesk/DQ-BOT.git /DQ-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-BOT
fi
cd /DQ-BOT
pip3 install -U -r requirements.txt
echo "Starting DQ-BOT...."
python3 bot.py
