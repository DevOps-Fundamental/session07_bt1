sudo adduser --disabled-password --gecos "" sftp-user
echo "sftp-user:SecureP@ssw0rd2026!" | sudo chpasswd
sudo mkdir -p /var/log/app-backup/
echo "Backup status: SUCCESS at $(date)" | sudo tee /var/log/app-backup/backup-check.log
sudo chown -R root:sftp-user /var/log/app-backup
sudo chmod 750 /var/log/app-backup
sudo chmod 640 /var/log/app-backup/backup-check.log
id sftp-user
ls -ld /var/log/app-backup
ls -l /var/log/app-backup/backup-check.log
