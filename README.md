# dart-firebase-pipeline
Dart Docker Image containing Firebase CLI for deployments to Firebase

## CI Samples

### Bitbucket Pipelines

`bitbucket-pipelines.yml`

```yaml
image: tkikuchi/dart-firebase-pipeline:dart2.10-node14

pipelines:
  branches:
    master:
      - step:
          script:
            - firebase use $PROJECT_ID --token $FIREBASE_TOKEN
            - firebase deploy --only hosting -m "Branch $BITBUCKET_BRANCH Build $BITBUCKET_BUILD_NUMBER" --token $FIREBASE_TOKEN
```

## GitLab CI

`.gitlab-ci.yml`

```yaml
image: tkikuchi/dart-firebase-pipeline:dart2.10-node12

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

