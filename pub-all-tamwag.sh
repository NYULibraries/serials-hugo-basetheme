if [ $1 ]
  then
	e=$1
else
	e="_default"
fi

 echo "\nEnvironment $1"
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing FAWF";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/fawf-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/liberator-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/palante-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/freedom-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/southernworker-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag/themasses-nyudlts/;
