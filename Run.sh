clear
echo
echo "Wait Until The Process Is Complete.!"
echo
clear
pip2 install mechanize
clear
pip2 install requests
clear
echo
function ProgressBar {
let _progress=(${1}*100/${2}*100)/100
let _done=(${_progress}*4)/10
let _left=40-$_done
_fill=$(printf "%${_done}s")
_empty=$(printf "%${_left}s")
printf "\e[92m\rProgress :\e[93m [${_fill// /#}${_empty// /-}] ${_progress}%%"
}
_start=1
_end=100
for number in $(seq ${_start} ${_end})
do
sleep 0.1
ProgressBar ${number} ${_end}
done
printf '\nFinished!\n'
clear
echo
clear
echo
python2 mbf
