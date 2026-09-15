# Google Classroom submission package

Run the following command from the repository root to create the complete upload file:

```bash
./scripts/package-submission.sh
```

This creates `skyward-capstone-project.zip` in the repository root. Upload that ZIP file to the Google Classroom assignment; do not extract it first unless the assignment specifically requests individual files.

## Contents included

- Static website source in `site/`
- AWS Terraform infrastructure and example configuration in `infra/`
- S3 backup helper in `scripts/`
- Architecture diagram and submission evidence guide in `docs/`
- GitHub Pages deployment workflow in `.github/`
- Project documentation in `README.md`

## Contents deliberately excluded

The package does **not** include `.git/`, Terraform state, `terraform.tfvars`, other ZIP files, or macOS metadata. This prevents account identifiers, locally supplied email addresses, key-pair names, and any accidental credentials from being submitted.

Before uploading, open the archive to make sure it contains the expected project files, and retain a local copy as your submission backup.
