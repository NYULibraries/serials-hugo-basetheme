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
hugo -e $e -s ~/projects/fawf-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
hugo -e $e -s ~/projects/liberator-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
hugo -e $e -s ~/projects/palante-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
hugo -e $e -s ~/projects/freedom-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
hugo -e $e -s ~/projects/southernworker-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
hugo -e $e -s ~/projects/themasses-nyudlts/;
