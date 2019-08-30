# Documentation and Tools for Accessing Compute Canada

(Note for Windows) if you are on Windows you need to get a SSH terminal.
- Any version of Windows 10 that is up to date enables SSH by default in `cmd` or in Powershell. Powershell is sufficient for most of the exercises we do.
- For anyone interested in further exploiting the interaction between the cluster and the local machine, a Unix/Linux environment is recommended. One of the most convinient ways is to use WSL. See [Windows Subsystem for Linux (WSL)](WSL.md) for Windows installation instructions to get Ubuntu terminals in Windows.
- Note: There are other alternatives that support SSH on Windows such as Putty and MobaXTerm. [MobaXTerm](https://docs.computecanada.ca/wiki/Connecting_with_MobaXTerm) is officially supported by ComputeCanada. Both of them allow 3rd-party, light-weight access to the cluster, but you won't have a fully functional Unix/Linux environment.

## Getting started

Given a SSH supporting environment (Unix/Linux, Windows Powershell, WSL, etc.),
1. [Apply for a Compute Canada Account](https://www.computecanada.ca/research-portal/account-management/apply-for-an-account/)
   - If you are a grad student, RA, etc. you will need a faculty sponsor, who will need a ComputeCanada account themselves
   - You will need them to provide you their ComputeCanada **CCRI** which is a form like `abc-123-01`
2. Follow [Setup instructions](setup.md)

After you have done the initial setup you can run code several ways:
- Run `julia` within a login node (for small tests ONLY).  Do not ask for lots of resources this way!  It isn't how clusters work
- Non-interactive [Jupyter](jupyter_login_node.md) accessed from your local machine
- Run an interactive [Interactive Jupyter Job](jupyter_jobs.md) accessed from your local machine
- Submit [Non-Interactive Julia Jobs](julia_jobs.md)


## More on Compute Canada
- List of [Available Software](https://docs.computecanada.ca/wiki/Available_software)
- For more on our [Interactive Jupyter Job](jupyter_jobs.md) see may be easier
    - [Jupyter](https://docs.computecanada.ca/wiki/Jupyter) and more on [SSH Tunnelling](https://docs.computecanada.ca/wiki/SSH_tunnelling).
