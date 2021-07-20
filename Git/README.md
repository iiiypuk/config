## git push remote all
**Как отправлять исходники в несколько репозиториев одной командой:**

1. Создаем новый remote например `all`
```bash
git remote add "all" git@github.com:username/my-repo.git
```

2. Добавляем в него несколько адресов для пуша
```bash
git remote set-url --add --push "all" git@username/my-repo.git
git remote set-url --add --push "all" git@bitbucket.org:username/my-repo.git
```

3. Чтобы запушить сразу в два репозитория выполняем
```bash
git push all
```

[Thanks, oleglomako](https://gist.github.com/oleglomako/eaacd8670bda3720a37de2c8acaf910e).
