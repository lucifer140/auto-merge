name: help to main
on: 
  pull_request:
    branches: main
    types: labeled
jobs:
  merge:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Set Git config
      run: |
          git config --local user.email "actions@github.com"
          git config --local user.name "Github Actions"
    - name: Merge help back to master
      uses: "nucleos/auto-merge-action@1.0.0"
      env:
        "GITHUB_TOKEN": ${{ secrets.GITHUB_TOKEN }}
          
