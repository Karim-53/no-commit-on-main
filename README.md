<h1 align="center">no-commit-on-main 🚫</h1>

<p align="center">
  <b>A tiny <a href="https://pre-commit.com/">pre-commit</a> hook that blocks accidental commits directly on <code>main</code> / <code>master</code> — so you always branch first.</b>
</p>

<p align="center">
  <a href="https://pre-commit.com/"><img alt="pre-commit" src="https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white"></a>
  <img alt="Language" src="https://img.shields.io/badge/shell-script-89e051?logo=gnu-bash&logoColor=white">
  <img alt="Version" src="https://img.shields.io/badge/rev-v1.2-blue">
</p>

Working straight on your default branch is easy to do by mistake and annoying to undo. Drop this hook into any repo and the commit is rejected the moment you're on `main` or `master`, nudging you to open a feature branch instead.

## 🚀 Usage

In the root of your project create a file named `.pre-commit-config.yaml` then write in it:
```yaml
repos:
-   repo: https://github.com/Karim-53/no-commit-on-main
    rev: v1.2
    hooks:
    -   id: no-commit-on-main
```

Then activate it on your machine:
```bash
pip install pre-commit
pre-commit install
```
That's it — from now on a commit attempt on `main`/`master` fails with a clear message.

## 📖 Learn more
See the [pre-commit framework docs](https://pre-commit.com/) for how hooks are configured and shared across a team.
