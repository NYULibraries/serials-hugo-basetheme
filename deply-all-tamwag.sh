if [ $1 ]
  then
	e=$1
else
	echo "Please supply an environment."
	exit
fi

if [$1=="dev"]
    then
    path="dev"
elif [$1=="stage"]
    then
    path="stage"
elif [$1=="production"]
    then
    path=""
fi

echo "\n The Environment is $1"
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
hugo -e $e -s ~/projects/southernworker-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/southernworker-nyudlts/docs/ henze@${path}web1:/www/sites/southernworker/ ;


exit;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing FAWF";
hugo -e $e -s ~/projects/fawf-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/fawf-nyudlts/docs/ henze@$1web1:/www/sites/fawf/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
hugo -e $e -s ~/projects/liberator-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/liberator-nyudlts/docs/ henze@$1web1:/www/sites/liberator/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
hugo -e $e -s ~/projects/palante-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/palante-nyudlts/docs/ henze@$1web1:/www/sites/palante/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
hugo -e $e -s ~/projects/freedom-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/freedom-nyudlts/docs/ henze@$1web1:/www/sites/freedom/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
hugo -e $e -s ~/projects/themasses-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/henze/projects/themasses-nyudlts/docs/ henze@$1web1:/www/sites/themasses/ ;
