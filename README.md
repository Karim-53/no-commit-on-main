# no-commit-on-main
pre-commit script to fail on commits on master or main
# Usage

In the root of your project create a file named `.pre-commit-config.yaml` then write in it:
```yaml
repos:
-   repo: https://github.com/Karim-53/no-commit-on-main
    rev: v1.2
    hooks:
    -   id: no-commit-on-main
```

Run the following commands to activate it on your computer
```cmd
pip install pre-commit
pre-commit install
```
Read more about it in  https://pre-commit.com/
