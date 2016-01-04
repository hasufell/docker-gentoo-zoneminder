FROM hasufell/gentoo-php5.6
MAINTAINER Julian Ospald <hasufell@posteo.de>


##### PACKAGE INSTALLATION #####

# copy paludis config
COPY ./config/paludis /etc/paludis

# install jobs
RUN chgrp paludisbuild /dev/tty && cave resolve -c world -x
RUN chgrp paludisbuild /dev/tty && cave resolve -c zoneminderset -x
RUN chgrp paludisbuild /dev/tty && cave resolve -c tools -x

# # update etc files... hope this doesn't screw up
RUN etc-update --automode -5

# ################################
