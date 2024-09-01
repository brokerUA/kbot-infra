# kbot-infra
Infrastructure as code for Kbot project

### Authentication
```bash
gcloud iam service-accounts create terraform --display-name "Terraform Service Account"

gcloud projects add-iam-policy-binding <PROJECT_ID> \
  --member "serviceAccount:terraform@<PROJECT_ID>.iam.gserviceaccount.com" \
  --role "roles/owner"

gcloud iam service-accounts keys create ~/terraform-key.json \
  --iam-account terraform@<PROJECT_ID>.iam.gserviceaccount.com

export GOOGLE_APPLICATION_CREDENTIALS="/Users/<YOUR_USER>/terraform-key.json"

gcloud services enable container.googleapis.com --project=<PROJECT_ID>
```

### Create bucket for terraform state
```bash
gsutil mb -p <PROJECT_ID> gs://<BUCKET_NAME>
```
set the bucket name in `main.tf` file

### Usage
```bash
terraform init
terraform plan
terraform apply
```
