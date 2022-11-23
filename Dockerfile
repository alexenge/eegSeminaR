FROM alexenge/r_eeg:4.2.1

USER root

COPY vignettes/ vignettes/
COPY LICENSE LICENSE
COPY README.md README.md

RUN chown -R $NB_USER $HOME

USER $NB_USER
