# CI/CD Cypress com Allure

Executando CICD com um projeto de Cypress com Allure no GITHUB ACTIONS

```yaml
name: allure-report
on:
    workflow_dispatch:
    push:
        branches:
            - main
    schedule:
    - cron: '0 9 * * *'   # todo dia às 09:00 UTC
    
jobs:
    generate-report:
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v4
            - name: Download Cypress
              uses: bahmutov/npm-install@v1
              with:
                  install-command: npm i
              env:
                  CYPRESS_INSTALL_BINARY: 0

            - name: Check Cypress cache
              run: |
                  npx cypress cache path
                  npx cypress cache list

            - name: restore / cache the binary
              id: cache-cypress
              uses: actions/cache@v3
              with:
                  path: ~/.cache/Cypress
                  key: cypress-cache-v2-${{ runner.os }}-${{ hashFiles('**/package-lock.json') }}
                  restore-keys: |
                      cypress-cache-v2-${{ runner.os }}-
                      cypress-cache-v2-

            - name: Install Cypress
              run: |
                  npx cypress install
                  npx cypress cache list

            - name: Run Cypress
              continue-on-error: true
              if: always()
              run: npm run cy:run

            - name: Get Allure history
              uses: actions/checkout@v4
              if: always()
              continue-on-error: true
              with:
                  ref: allure
                  path: allure

            - name: Generate Allure Report
              uses: simple-elf/allure-report-action@master
              if: always()
              with:
                  allure_results: allure-results
                  gh_pages: allure

            - name: Deploy report to Github Pages
              if: always()
              uses: peaceiris/actions-gh-pages@v4
              with:
                  github_token: ${{ secrets.GITHUB_TOKEN }}
                  publish_branch: allure
                  publish_dir: allure-history
```

Fonte> https://github.com/horadoqa/cypress-allure