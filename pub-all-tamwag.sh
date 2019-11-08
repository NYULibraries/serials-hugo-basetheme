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
rm -rf ~/projects/fawf-nyudlts/docs/*
hugo -e $e -s ~/projects/fawf-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
rm -rf ~/projects/liberator-nyudlts/docs/*
hugo -e $e -s ~/projects/liberator-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
rm -rf ~/projects/palante-nyudlts/docs/*
hugo -e $e -s ~/projects/palante-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
rm -rf ~/projects/freedom-nyudlts/docs/*
hugo -e $e -s ~/projects/freedom-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
rm -rf ~/projects/southernworker-nyudlts/docs/*
hugo -e $e -s ~/projects/southernworker-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
rm -rf ~/projects/themasses-nyudlts/docs/*
hugo -e $e -s ~/projects/themasses-nyudlts/;
