# dart-firebase-pipeline
Dart Docker Image containing Firebase CLI for deployments to Firebase

## GitLab CI Sample

`.gitlab-ci.yml`

```yaml
image: tkikuchi/dart-firebase-pipeline

stages:
  - deploy

deploy-prod:
  stage: deploy
  only:
    - master
  script:
    - firebase use "$PROJECT_ID" --token "$FIREBASE_TOKEN"
    - firebase deploy --only hosting -m "Pipe $CI_PIPELINE_ID Build $CI_BUILD_ID" --token "$FIREBASE_TOKEN"
```

