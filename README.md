# Ephemeral Environments using Humanitec

This repository serves as a demonstration of how to use Humanitec to create temporary development environments. 
With this approach, every time a developer starts working on a new feature or bug fix, they can easily spin up a new development environment that is a carbon copy of the production environment. This helps eliminate problems caused by differences between development and production setups, and allows for faster development cycles.

The content of this repository is the reference material for the Humanitec [Tutorial on ephemeral Environments](https://developer.humanitec.com/introduction/tutorials/deploy-ephemeral-environments).

## How it works

- A developer creates a new branch and pull request in their repository
- A Github Action is triggered which creates a new ephemeral environment in Humanitec
- The developer can then make changes to their code and push them to the branch
- The Github Action will automatically build and deploy the new code to the ephemeral environment
- The developer can then test their changes in the ephemeral environment
- Once the developer is satisfied with their changes, they can merge the pull request
- The ephemeral environment is automatically deleted
- The changes are automatically deployed to the production environment

## Requirements

- A Humanitec account (sign up for a free trial at https://humanitec.com/)
- A created application in Humanitec

## Getting Started

 1. Fork this repository
 2. Set up a new application in Humanitec
 3. Setup the following Gitub Action Secrets:
    1. `HUMANITEC_TOKEN` - Create a token in Humanitec and add it as a secret in Github
 4. Setup the following Github Action Environment Variables:
    1. `HUMANITEC_ORG` - The name of your Humanitec organization
    2. `APP_NAME` - The name of the application you created in Humanitec
