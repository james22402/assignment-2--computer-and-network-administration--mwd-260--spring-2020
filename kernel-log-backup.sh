BACKUP_LOC=/var/log/kern.log
BACKUP_FILE="$BACKUP_LOC".backup
echo "Running script $0"
if [ -s $BACKUP_LOC ]; then
  echo "$BACKUP_LOC is empty. Nothing to back up. Exiting..."
  exit 1
fi
echo "Backing up $BACKUP_LOC"
cp $BACKUP_LOC $BACKUP_FILE
echo "Clearing out $BACKUP_LOC"
echo "" > $BACKUP_LOC
echo "Backed up file $BACKUP_LOC"
cat $BACKUP_LOC
echo "Backup file: $BACKUP_FILE"
cat $BACKUP_FILE
exit 0