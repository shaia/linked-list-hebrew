FROM mcr.microsoft.com/dotnet/interactive-jupyter:latest

USER root
RUN chown -R ${NB_USER}:${NB_GID} ${HOME}
USER ${NB_USER}

COPY --chown=${NB_USER}:${NB_GID} . ${HOME}/
