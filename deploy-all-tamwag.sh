if [ $1 ]
  then
	e=$1
else
	echo "Please supply an environment."
	exit
fi

if [ $e = "dev" ]
    then
    path="dev"
elif [ $e = "stage" ]
    then
    path="stage"
elif [ $e = "production" ]
    then
    path=""
fi

echo "\n The Environment is $1"
echo "\n The Environment Path is $path"
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/southernworker-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/southernworker-nyudlts/docs/ `whoami`@${path}web1:/www/sites/southernworker/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing FAWF";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/fawf-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/fawf-nyudlts/docs/ `whoami`${path}web1:/www/sites/fawf/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/liberator-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/liberator-nyudlts/docs/ `whoami`@${path}web1:/www/sites/liberator/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/palante-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/palante-nyudlts/docs/ `whoami`@${path}web1:/www/sites/palante/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/freedom-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/freedom-nyudlts/docs/ `whoami`@${path}web1:/www/sites/freedom/ ;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/themasses-nyudlts/;
rsync  -avzr  --exclude '.*'   /Users/`whoami`/projects/tamwag/themasses-nyudlts/docs/ `whoami`@${path}web1:/www/sites/themasses/ ;
