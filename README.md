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
2. Link and token is in logs
    ```shell
   docker-compose logs jupyterlab
   ```
3. Start new project (do this inside terminal in the Jupyterlab)
    ```shell
   start-project.sh "myproject"
   ```
