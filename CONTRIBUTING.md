# Commit Message Guidelines

To maintain a clean and consistent commit history, we use a commit message template. This document explains how to set up and use the commit message template for our project.

## Setting Up the Commit Message Template

The commit message template is located in the `.gitconfig/commit-msg-template.txt` file within our project repository. To configure your Git to use this template for commits in this project, follow these steps:

1. **Ensure you are in the project's root directory**. This setup needs to be done within the context of your local clone of the repository.

2. **Run the Git configuration command**. Execute the following command in your terminal:

   ```bash
   git config commit.template .gitconfig/commit-msg-template.txt
   ```

   This command tells Git to use the `commit-msg-template.txt` file as the template for commit messages in this repository.

## How to Use the Commit Message Template

After configuring your Git to use the template, whenever you commit without a message (i.e., just running `git commit` without the `-m` flag), your default text editor will open with the contents of `commit-msg-template.txt` preloaded.

- **Fill in the template**: Replace the placeholders and guidance text with the relevant details for your commit. Be sure to follow the structure and guidelines provided within the template to ensure consistency across all commit messages.

- **Save and close the editor**: After editing the commit message, save the changes and close the editor. Git will then proceed with the commit using your custom message.

## Best Practices for Commit Messages

- **Keep the subject line concise**: Aim for about 50 characters. It's okay to go over if necessary, but try to be as brief as possible.
- **Use the imperative mood** in the subject line: "Fix bug" instead of "Fixed bug" or "Fixes bug."
- **Wrap the body at 72 characters**: This makes the message easier to read on standard terminals.
- **Use the body to explain _what_ and _why_**: The subject line says _what_ was done; use the body to explain further details and the reasoning behind the changes.

By following these guidelines and using the commit message template, we can ensure our project's commit history is useful and accessible to everyone on the team. If you have any questions or suggestions regarding the commit message guidelines, please feel free to discuss them with the team.
