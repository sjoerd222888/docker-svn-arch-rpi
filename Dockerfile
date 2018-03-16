FROM armv7h/archlinux
MAINTAINER Alexander Timmermans <alexander@timmermans.ch>

## Update and install all required packages
RUN pacman -Syu apache subversion  --noconfirm

ENV LANG en_US.UTF-8
ENV LC_TYPE en_US.UTF-8

RUN locale -a

VOLUME /var/svn
EXPOSE 3690:3690

CMD svnserve -d -r /var/svn/ --log-file /dev/stdout --foreground
