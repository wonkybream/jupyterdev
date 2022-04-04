# Jupyterlab environment

[![Build](https://github.com/wonkybream/jupyterdev/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/wonkybream/jupyterdev/actions/workflows/build.yml)

My Jupyterlab development environment. Allows faster way to test and iterate my ideas.

I am adding components whenever I need one.

## Usage

There's a docker volume attached, your projects are persisted there.

1. Start Jupyterlab environment
   ```shell
   docker-compose up -d --build
    ```
2. Link and token for your environment is in logs
    ```shell
   docker-compose logs jupyterlab
   
   jupyterlab_1  |     To access the server, open this file in a browser:
   jupyterlab_1  |         file:///home/wonky/.local/share/jupyter/runtime/jpserver-7-open.html
   jupyterlab_1  |     Or copy and paste one of these URLs:
   jupyterlab_1  |         http://localhost:8888/lab?token=xxxxx
   jupyterlab_1  |      or http://127.0.0.1:8888/lab?token=xxxxx
   ```
3. Start new project (do this inside terminal in the Jupyterlab)
    ```shell
   start-project.sh "myproject"
   ```
