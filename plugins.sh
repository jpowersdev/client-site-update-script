#!/bin/bash
echo "**********************************************************************"
echo "******************** Running YIKES Update Script *********************"
echo "**********************************************************************"
printf "\n"

installs='aatravelers actacademy alliancewe ascinc baums casapapel ccahatool ccardev cedarpointbar
		chop d3b decibelmag delawarenature designthinkstd dineoutforlife 
		equityproject firststatecc flyingfish harvestmkt hivprevention htjewelry
		iba inoutsource kimberton lindaleealter movingt mstonepartners
		multimeasures nursepartners patatgiovannis philaerc phillymagic
		phlcontroller phlgeekawards phrootz pjerome researchforact riverfrontn
		soulfullproj spicermullikin steverotfeld tredyffrin upennaisp waverly
		yikescloud yikesplugins'

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
