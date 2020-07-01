## pip
```console
$ python -m venv .venv
$ . .venv/bin/activate
$ pip install boto3 pytest
$ deactivate
```
## pipenv
```console
$ pipenv install boto3
$ pipenv install --dev pytest
```
## poetry
```console
$ poetry init
$ poetry add boto3
$ poetry add --dev pytest
```