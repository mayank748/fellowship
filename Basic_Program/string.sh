echo "“Hello <<UserName>>, How are you?”"
echo "enter the user name"
read  user
if [ ${#user} -ge 3 ]
then
echo "“Hello" $user ", How are you?”"
else
echo enter the username with length greater than 3
fi
