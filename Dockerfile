FROM alpine:3.12

LABEL repository="https://github.com/fabian4/actions-push-anydir-to-anydir"
LABEL homepage="https://github.com/fabian4/actions-push-anydir-to-anydir"
LABEL maintainer="Fabian Bao <baoyaolong@gmail.com>"

LABEL com.github.actions.name="Push Anydir to Anydir"
LABEL com.github.actions.description="Github action to push any subdirectory from a repo as a subdirectory in another repo."
LABEL com.github.actions.icon="git-pull-request"
LABEL com.github.actions.color="blue"

RUN apk add --no-cache git
RUN apk add --no-cache bash

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]