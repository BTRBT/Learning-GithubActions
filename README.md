# Github Actions Notes

This is a study project to learn Github Actions for automated testing and deployment with Docker. In this instance, it's a very simple Flask web app that displays the date and time.


## Links
[Tutorial Video - How GitHub Actions 10x my productivity](https://www.youtube.com/watch?v=yfBtjLxn_6k) - Fireship outline for Github Actions. Concise and informative, just like most of his videos.

[Critique Video - GitHub Actions Feels Bad](https://www.youtube.com/watch?v=9qljpi5jiMQ) - I may revisit this video at a future time, given that it expresses a level of technical expertise which I do not yet fully understand. Most of it appears to be a criticism of the implementation details for GitHub actions, its significance in technical culture, etc. It seems light on examinig direct utility to third-party developers. At least, for most use-cases.

[Tutorial Article - Running GitHub Actions Locally with act - A Comprehensive Guide](https://www.codemancers.com/blog/2024-03-19-act-guide-for-github-workflow/) - Good general outline for how to use Act for testing action workflows before deploying them to github. Seems particularly handy for more complicated use-cases. Though, the fact that testing frameworks need to be tested makes my brain itch a bit.

[ChatGPT Discussion - Dockerfile Multi-Stage Build](https://chatgpt.com/share/670eaa29-1b94-8008-a8f9-1c9c1fc9090e) - This offered some interesting insights in using Docker alone for CI/CD. I actually quite like this option.


## Resources
[Act](https://github.com/nektos/act) - This is used to run github actions locally. Useful for ensuring that actions work properly before using up github cloud resources.
[Awesome Github Actions](https://github.com/sdras/awesome-actions) - Awesome repository for Github Actions.
[Github Actions Toolkit](https://github.com/actions/toolkit) - Repository for Github Actions tools.


## Personal Notes
- Jenkins as an alternative to Github Actions?
- Look into Docker actions?
- Look into GitLab CI?
- Look into conditional Docker steps? *
    - eg: Pytest isn't needed for deployment, only as a pre-deployment check. Is there a way to make it so that docker only installs it during tests?
        - See the ChatGPT discussion above for relevant details on this. Basic gist is creating staging steps in the dockerfile.
- TO READ: [Reusing Workflows](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)
- TO READ: [Permissions required for GitHub Apps](https://docs.github.com/en/rest/authentication/permissions-required-for-github-apps?apiVersion=2022-11-28)
- TO READ: [About Self-hosted Runners](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)