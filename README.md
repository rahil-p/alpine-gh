# alpine-gh

[![docker-image][docker-image-badge]][docker-image]
[![github-workflow][github-workflow-badge]][github-workflow]

[docker-image-badge]: https://img.shields.io/docker/v/rahilp/alpine-gh?label=docker&logo=docker
[github-workflow-badge]: https://img.shields.io/github/workflow/status/rahil-p/alpine-gh/ci?logo=github

[docker-image]: https://hub.docker.com/r/rahilp/alpine-gh/tags
[github-workflow]: https://github.com/rahil-p/alpine-gh/actions

A simple [GitHub CLI](https://cli.github.com/) 
([`gh`](https://cli.github.com/manual/) + [`git`](https://git-scm.com/docs)) container running in 
[Alpine Linux](https://hub.docker.com/_/alpine).

## Usage Examples

Interactive

```shell
docker run --rm -it \
  --entrypoint /bin/sh \
  rahilp/alpine-gh

# gh auth login 
```

Executable

```shell
docker run --rm \
  --entrypoint /bin/sh \
  --v "$(pwd)/token.txt:/token.txt" \
  rahilp/alpine-gh \
  -c "gh auth < /token.txt && gh auth status"
```
