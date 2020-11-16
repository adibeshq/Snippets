expo export --force --public-url https://test.tameshk.icu/
localpath=./dist/
remotepath=/root/albert/dist
scp -rp -P 29874 $localpath/* root@77.68.120.213:/$remotepath/
