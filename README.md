<h1>Notes sur mes conteneurs</h1>

<h2>Debian:</h2>
modification de l'installation de base de debian Jessie (avec du vim et modification de .bashrc)
<h2>Web:</h2>
deux conteneurs:
* Apache (avec mise en place d'un vhost pour test du framework prestashop)
* Nginx (pareil que pour Apache)
<h2>Kali:</h2>
test de création d'un conteneur kali.


***************************************************************************
<h1>Divers notes sur docker</h1>
<h2>Commandes de base</h2>
<h3>build</h3>
En ligne de commande au même niveau que le fichier Dockerfile
docker build -t [TAG_IMGAE] .
ex: docker build -t nbo_test .

