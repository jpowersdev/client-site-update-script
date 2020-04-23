## WPEngine Client Site Update Script

Run this script from a terminal session in order to automatically update WPEngine Installs.

Confirm that you are able to successfully connect to WPEngine SSH Gatweway.
* https://wpengine.com/support/getting-started-ssh-gateway/

When SSH'ing into a new server, you may need to manually confirm the host's authenticity. Simply type `yes` when you see the following prompt:

* `The authenticity of host 'phlcontroller.ssh.wpengine.net (35.196.98.9)' can't be established.
RSA key fingerprint is SHA256:T8IoIgBRJ3gDjA6/q7i33+nSrrpVfZipYtxo1rqvww4.
Are you sure you want to continue connecting (yes/no)?`


## Site updates not covered

These sites are not covered in the script for either of the following reasons:
1. The SSH Gateway feature is not included in the account/plan that houses the install.
2. You, as the user, do not have SSH privileges for the install.

* https://fight.org/wp-admin/
* https://www.gbs-cidp.org/wp-admin/
* https://forum.gbs-cidp.org/wp-admin/
* https://activateworld.com/wp-admin/
* https://www.thindifference.com/wp-admin/
* https://lancasterlibraries.org/wp-admin/
* http://www.flyingmonkeyphilly.com/
