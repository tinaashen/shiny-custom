## Video Demo
--- 
https://github.com/tinaashen/shiny-custom/assets/106832655/f995b856-c39f-49a0-a93e-e35fb8def854

## Running the app
---
### R/Shiny UI Setup Guide

#### Prerequisites
- Ensure access to Milton HPC and OnDemand.
- If you lack access, follow the provided setup instructions.

#### Initial Setup
1. Log into OnDemand.
2. Navigate to **CLUSTERS -> SLURM SHELL ACCESS**.
3. Enter your password (note that it won't be displayed on the screen).
4. Clone the repository: `git clone https://github.com/tinaashen/shiny_launch.git`.

#### Setting up RStudio in OnDemand
1. **Do not skip installing required packages.**
2. Launch **RStudio Latest**.
3. Configure the session:
   - Partition: Regular
   - R version: 4.2.3 (ensure compatibility with OnDemand Shiny app requirements)
   - Runtime hours: 1
   - CPUs: 1
   - Memory: 1GB
4. Select the `shiny_launch` checkbox.
5. Confirm the R version in the top left corner is 4.2.3.
6. Navigate to and double-click on `shiny_launch`.
7. Open `install.R`.
8. Run the first line of code 3 times to execute all necessary installation commands (expect around 10 minutes for completion).
9. If the installation stalls, visit the packages tab for troubleshooting.
10. Open `ui.R` and click the **Run App** button.

#### Launching OnDemand Shiny App
1. Navigate to **Shiny App** setup.
2. Configure your session:
   - Partition: interactive
   - R Version: 4.2.3
   - CPUs: 4
   - Memory: 8GB
3. Specify the Shiny App directory: `/home/users/allstaff/<username>/shiny_launch` (use a directory, not a file name).
   - For a basic app, name the file `app.R`.
   - For an app with both UI and server files, name them `ui.R` and `server.R` respectively.
4. If there are issues, consult the session log and output log.
5. Click **Launch -> Connect to Shiny App** to start your application.

#### Troubleshooting
- If the UI fails to appear or the app shuts down immediately, verify that RStudio and Shiny are using compatible versions.
- Refer to [technical notes]("https://wehieduau.sharepoint.com/:w:/r/sites/StudentInternGroupatWEHI/Shared%20Documents/Image%20Introduction/2023-2024%20Summer%20Technical%20Notes/Technical%20Notes%20Shiny.docx?d=w488b868b75aa460eaea8ace0ef2cc5e2&csf=1&web=1&e=FBHNic") for pictures.



