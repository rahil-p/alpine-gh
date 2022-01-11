# alpine-gh

A simple and lightweight GitHub CLI (`gh`) container running in Alpine Linux.

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
