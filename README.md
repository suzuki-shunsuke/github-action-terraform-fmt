# github-action-terraform-fmt

GitHub Actions to run `terraform fmt`.
If Terraform Configuration files are updated by `terraform fmt` in `pull_request` event workflow, this action pushes a commit to the remote branch `GITHUB_HEAD_REF`.

<img width="894" alt="image" src="https://user-images.githubusercontent.com/13323303/155866979-52dd2e6f-9885-4af1-bac0-abd1280fdea5.png">

--

<img width="1428" alt="image" src="https://user-images.githubusercontent.com/13323303/155866989-8cbcd50e-4764-4f47-a50f-102d04a04f89.png">

## Requirements

* terraform
* [ghcp](https://github.com/int128/ghcp)

## License

[MIT](LICENSE)
