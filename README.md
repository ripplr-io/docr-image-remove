# DigitalOcean Image Remove
This action uses [doctl](https://github.com/digitalocean/action-doctl) to find and remove old images from Digital Ocean's Container Registry.

It gets the repository tags using `doctl registry repository lt` and orders them by the `UpdatedAt` attribute. By default it will ignore the tag `latest` and the 10 most recent tags. It then deletes the older tags using `doctl registry repository dt`.

PRs are welcome.

# Usage
Add this step to a job to automatically delete older images as part of a job:

```yaml
    - name: Remove old images from Container Registry
      uses: ripplr-io/docr-image-remove@v1
      with:
        image_repository: image-repository # required
        buffer_size: 10
```

# Inputs
- `image_repository` - (**Required**) Image repository name in the Container Registry
- `buffer_size` - (Optional) Number of recent images. Default is `10`

## License

This GitHub Action and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
