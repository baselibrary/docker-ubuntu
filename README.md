# baselibrary/ubuntu [![Docker Repository on Quay.io](https://quay.io/repository/baselibrary/ubuntu/status "Docker Repository on Quay.io")](https://quay.io/repository/baselibrary/ubuntu)

## Installation and Usage

    docker pull quay.io/baselibrary/ubuntu:${VERSION:-latest}

## Available Versions (Tags)

* `latest`: ubuntu 14.04
* `14.04`: ubuntu 14.04

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Continuous Integration

Images are built and pushed to Docker Hub on every deploy. Because Quay currently only supports build triggers where the Docker tag name exactly matches a GitHub branch/tag name, we must run the following script to synchronize all our remote branches after a merge to master:

    make sync-branches
