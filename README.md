# shfmt-action

This github action wraps the shfmt cli tool. Example:

```yaml
name: Base Path Image Build

on:
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      # This step will fail if the script.sh file doesn't meet shfmt standards.
      - name: Run Shfmt
        uses: collin-miller/shfmt-action@v1
        with:
          args: -d ./path/to/test/script.sh
```
