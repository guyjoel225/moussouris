#!/bin/bash

#sysinfo page - un script  pour produit un fichier html

cat << _EOF_


<html>
 <html>
<head>
 <title>Sysème d'Information</title>
<head>
 <body>
<h1>
my hostename is: $HOSTNAME
</h1>
<p>le contenu de la page </p>
</body>
</html>

_EOF_
