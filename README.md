# DEDIWATCH

Si vous êtes dans mon cas et que vous avez besoin régulièrement de nouveaux serveurs dédiés chez Dedibox/online, vous avez dû remarquer que certains d'entre-eux tombent régulièrement en rupture.

Au lieu de surveiller de manière régulière le réapprovisionnement de ces serveurs pour pouvoir me jeter dessus, j'ai développé un petit script qui le fait pour moi, de manière automatique et qui me prévient par mail.

Je le partage avec vous pour que vous puissiez être averti sans délai de la disponibilité de la dedibox qu'il vous faut. C'est ce que je viens de faire à l'instant en moins d'une minute, il n'y en avait qu'un, il est pour moi ;-)

## Prérequis

Aucun. Il suffit de mettre en place le script sur une de vos machine et de programmer la crontab.

## Installation

Copier dans /usr/local/bin le script dediwatch.sh et le rendre exécutable

    $ chmod +x /usr/local/bin/dediwatch.sh

Puis programmez votre crontab :

    $ crontab -e
    * * * * * /usr/local/bin/dediwatch.sh >/dev/null 2>&1

Le script va s'executer toutes les minutes et vous préviendra dès que le serveur est disponible.
