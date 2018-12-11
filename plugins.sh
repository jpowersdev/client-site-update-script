#!/bin/bash
installs='yikesplugins phlcontroller dineoutforlife soulfullproj
		spicermullikin phlgeekawards inoutsource upennaisp
		delawarenature htjewelry mstonepartners actacademy
		alliancewe baums casapapel ccardev chop
		d3b decibelmag designthinkstd flyingfish
		harvestmkt iba kimberton lindaleealter
		movingt multimeasures nursepartners patatgiovannis
		philaerc phillymagic phrootz pjerome
		researchforact riverfrontn steverotfeld waverly
		tredyffrin'
for install in $installs;
do
  printf "\n"
  echo "$install@$install.ssh.wpengine.net"
  printf "\n"
  ssh $install@$install.ssh.wpengine.net 'cd /sites/$install; wp core update; wp plugin update --all --exclude=slider-pro,slider-pro-assets,mailgun,woocommerce; exit;'
done
