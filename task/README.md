Инструкция по тестовому развертыванию:

- файл arp_checker.sh копировать в директорию /usr/local/bin/
- файлы arp_checker.service и arp.checker.timer положить в директорию /etc/systemd/system/
- выполнить команду systemctl daemon-reload
- выполнить команду systemctl start arp_checker.service 
- выполнить команду systemctl start arp_checker.timer

Файл с данными по mac-адресам находиться в vat/log/arp_checker.log
