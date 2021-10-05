# Game Server Stacks

Docker stacks for game servers I've hosted for friendly group play.  Not super productionized but clean, they all worked at some point in time but maybe various ages and states of disrepair.

## Stack Style Conventions

I have a docker-compose style I follow such as:
- adding an SFTP container for ease of adding mods or granting access to others to help configure the server. 
- storing secrets in a gitignored .env file (for public sharing/commiting like this repo)
- any ENVs or extra features the server image supports
- volumes, ports, timezone, standard stuff
- traefik HTTP router config if there's any web components
- Something I should try: traefik TCP router config for main game ports/sftp

## How to use this repo

- Learn from the stacks, borrow from them, try them and tweak them to your needs.  
- Follow my same style conventions?  Fork and pull request by all means!  Add a new stack even, though I may not be able to test it's client if I don't own the game so add a MAINTAINER note too.
- Find/Fix Bugs! Put in effort and I may even assist you with issues. Types of issues to expect:
  - Docker Images change over time, or get stale and maybe I haven't ran the server in a while.
  - Volume data may need some seeding based off the images instructions or just copying server files from your desktop server 'stock' copies.
  - Linuxy things. Docker isn't a get-out-of-learning linux free card. Sometimes you have to put on your sysadmin hat and dig in.
  - Dockery things. I run official docker-ce on debian's latest stable version and find it to be highly reliable.

## How not to use this repo

- For support/reporting issues with the images used.  I didn't write the images used, though I sometimes am forced to modify/pull in fork updates.
  - I search for popular hub.docker.com images for each game and pick them based on feature sets/source code/release cadance.
  - Read their source, see the find/fix bugs/put in the effor line in "how to use this repo"
