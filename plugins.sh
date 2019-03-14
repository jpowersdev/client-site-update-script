#!/bin/bash
echo "**********************************************************************"
echo "******************** Running YIKES Update Script *********************"
echo "**********************************************************************"
printf "\n"

installs='yikesplugins phlcontroller dineoutforlife soulfullproj
		spicermullikin phlgeekawards inoutsource upennaisp
		delawarenature htjewelry mstonepartners actacademy
		alliancewe baums casapapel ccardev chop
		d3b decibelmag designthinkstd flyingfish
		harvestmkt iba kimberton lindaleealter
		movingt multimeasures nursepartners patatgiovannis
		philaerc phillymagic phrootz pjerome
		researchforact riverfrontn steverotfeld waverly
		tredyffrin firststatecc'

for install in $installs;
do
  echo "**********************************************************************"
  echo "Site: $install ($install@$install.ssh.wpengine.net)"
  printf "\n"
  ssh $install@$install.ssh.wpengine.net 'cd /sites/$install; wp core update; wp core language update; wp theme update --all; wp plugin update --all --exclude=slider-pro,slider-pro-assets,mailgun,woocommerce; exit;'
  echo "**********************************************************************"
  printf "\n\n"
done

echo "**********************************************************************"
echo "******************* YIKES Update Script Complete *********************"
echo "**********************************************************************"
printf "\n"