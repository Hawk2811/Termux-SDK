echo Termux SDK Debug Kit v1.0
nc -lvp 4444 > debug_bin.unix
chmod +x debug_bin.unix
./debug_bin.unix
echo Debug Kit Closed