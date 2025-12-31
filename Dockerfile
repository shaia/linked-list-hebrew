FROM mcr.microsoft.com/dotnet/sdk:8.0

# Install Jupyter and .NET Interactive
RUN dotnet tool install -g Microsoft.dotnet-interactive

ENV PATH="${PATH}:/root/.dotnet/tools"

# Install Jupyter kernel
RUN dotnet interactive jupyter install

# Set up working directory
WORKDIR /home/jovyan
COPY . .

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
