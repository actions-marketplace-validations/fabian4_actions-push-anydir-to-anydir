# Github Action - push any subdirectory from a repo as a subdirectory in another repo.

## Example usage :
~~~yml
name: Push to publish
on:
  push:
    branches: [ main ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Push to publish
        uses: fabian4/actions-push-anydir-to-anydir@main
        env: 
          API_TOKEN_GITHUB: ${{ secrets.API_TOKEN_GITHUB }}
        with:
          source-folder: dist/
          dest-repo: 'user-name/repo-name'
          dest-folder: 'docs'
          commit-message: 'sync commit'
          excludes: .vuepress/;README.md
~~~

---

Thanks to :
 - https://github.com/NoahDragon/action-push-repo-as-subdirectory-in-another-repo
