FROM varsy/git-updater

MAINTAINER Sergey Zhukov, sergey@jetbrains.com

VOLUME /app



ADD entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



