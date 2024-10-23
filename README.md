# Bash Script: Automating Firebase Project Creation and Configuration

This script automates the creation and configuration of a Firebase project, including setting up hosting, database, and deployment using the Firebase CLI. It utilizes environment-specific variables and automatically feeds responses to Firebase CLI's interactive prompts to complete the setup without manual input. Below are the key components of the script:

## 1. Firebase Hosting Initialization
- Initializes Firebase Hosting for a project using the `firebase init hosting` command.
- Automatically provides necessary inputs (e.g., environment name and other options) by echoing responses to prompts.
- Includes timed pauses (`sleep`) to allow commands to complete before the next prompt is fed.

## 2. Firebase Database Initialization
- Sets up the Firebase Realtime Database with the `firebase init database` command.
- Feeds responses to prompts (e.g., confirming actions, selecting the default `database.rules.json` file).
  
## 3. Firebase Web App Creation
- Creates a new Firebase web app in the project using the `firebase apps:create WEB` command.
- Assigns the environment name (`$fb_env`) as the app name.

## 4. Export Firebase SDK Configuration
- Retrieves and saves the Firebase SDK configuration for the created web app using the `firebase apps:sdkconfig` command.
- Outputs the configuration to `firebaseconfig.txt`.

## 5. Firebase Project Deployment
- Deploys the Firebase project (including hosting, database, etc.) using the `firebase deploy` command.

## Variables Used:
- **`$fb_env`**: Represents the environment or project name for Firebase (e.g., "production", "staging").
- **`$firebase_token`**: The Firebase authentication token required for secure CLI operations.

## Key Functionalities:
- Automates interactive Firebase CLI processes using `echo` to feed responses.
- Adds delays between prompts using `sleep` to ensure proper execution timing.
- Simplifies the Firebase setup and deployment process, making it ideal for use in CI/CD pipelines or when creating projects in bulk.

This script is useful for automating Firebase project setups with minimal manual intervention, making it more efficient for managing environments consistently.
