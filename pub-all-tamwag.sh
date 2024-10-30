# Shell script to publish all the tamwag sites.
# Example usage: sh pub-all-tamwag.sh production



if [ $1 ]
  then
	e=$1
else
	e="_default"
fi

if [ $e = "-e" ]
  then
	echo "Note: do not include the -e flag.  "
  echo "Example of correct usage: sh pub-all-tamwag.sh production"

	exit
fi

 echo "\nEnvironment $1"
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing FAWF";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/fawf-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Liberator";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/liberator-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Palante";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/palante-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Freedom";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/freedom-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing Southern Worker";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/southernworker-nyudlts/;
echo "---------------------------------";
echo "---------------------------------\n\n";
echo "Publishing The Masses";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/themasses-nyudlts/;
echo "---------------------------------\n\n";
echo "Publishing Revolt";
hugo --cleanDestinationDir -e $e -s ~/projects/tamwag_serials/revolt-nyudlts/;
