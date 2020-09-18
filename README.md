# .dot
Hey!

This is where i put configuration files i use in my linux installations. 

Installing: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/petterroea/.dot/master/bootstrap.sh)"`

## Parts

Running the above command should auto-detect which stage you are at, and only install the neccesary components

### first-stage

Contains packages to be installed before rebooting, required to make the bootstrapping experience afterwards comfortable. Run as root.

### second-stage

Runs for a while and contains the rest of the software you would want on your computer