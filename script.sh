#Update script of UserBot by @marshmello61
#Some fixes by @RoyalBoy69


repo="Paimon"
rm -rf ${repo}

echo "You're running the Paimon Updater script"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked Paimon from thegreatfoxxgoddess or has the same repo name i.e. Paimon? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your Repo"
git pull
git pull https://github.com/Thegreatfoxxgoddess/Paimon.git
git diff
git commit -m "hmmmmmmmmm"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
