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
rm -rf ~/projects/tamwag/fawf-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/fawf-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
rm -rf ~/projects/tamwag/liberator-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/liberator-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
rm -rf ~/projects/tamwag/palante-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/palante-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
rm -rf ~/projects/tamwag/freedom-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/freedom-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
rm -rf ~/projects/tamwag/southernworker-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/southernworker-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
rm -rf ~/projects/tamwag/themasses-nyudlts/docs/*
hugo -e $e -s ~/projects/tamwag/themasses-nyudlts/;
