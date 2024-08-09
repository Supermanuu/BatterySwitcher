
# Sofle Battery Switcher

[![CI pipeline list](https://github.com/Supermanuu/BatterySwitcher/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/Supermanuu/BatterySwitcher/actions/workflows/release.yml)
[![link to latest version](https://img.shields.io/badge/version-latest-blue)](https://github.com/Supermanuu/BatterySwitcher/releases/latest)

We are triying yo make a battery switch for the Sofle Keyboard, or properly said, the [nRFMicro](https://github.com/joric/nrfmicro/tree/1.4) board used by the [Sofle](https://github.com/josefadamcik/SofleKeyboard) Keyboard.

Our goal is to have a PCB that could short and open the baterry supply via a switch, keeping as low profile as possible and doing it as integrated as possible

## Setup

In order to use this repo you should add a `KICAD_3RD_PARTY` variable with `${KIPRJMOD}/3rdparty/` value. If you had installed Kicad for all users, the variable shall be a system variable. Otherwise it can be a user variable.

Also, to commit the messages we use <https://github.com/marketplace/actions/github-actions-create-tag>, so your commit messages need to follow a certain format. In order to do so, you need to install some git hooks. You can do that by running the following command:

```bash
./scripts/setup-hooks.sh
```

## Used plugins

* For download parts from [Component Search Engine](https://componentsearchengine.com/): [Import-LIB-KiCad-Plugin](https://github.com/Steffen-W/Import-LIB-KiCad-Plugin)

## Documentation

See [the documentation](doc/user-guide.md).

## Releases

See [Github releases](https://github.com/Supermanuu/BatterySwitcher/releases).

Each release has:

* iBOM in `ibom.html`
* Schematic in `schematic.pdf`
* User guide in `user-guide.html`
* PCB images:
  * top view in `top.png`.
  * bottom view in `bottom.png`.

Another attach has:

* Gerber files and drill files in `manufacturing.zip`
* Pick and place file, JLC style in `pick_and_place.csv`

## Generate release

To generate a release you will need to create a new `release/*` branch and make a PR from that branch to main. In that scenario, when the PR is closed a job will be launched. That job will generate a tag and a release with all the change information from the previous tag until now, using the commit contents as specified in <https://github.com/marketplace/actions/github-tag>.

### Release changelog management

In order to auto-generate the changelog, the commits shall use this rules:

| Keyword           | Example                                                            | Increases |
|-------------------|--------------------------------------------------------------------|-----------|
| `fix(something)`  | fix(pencil): stop graphite breaking when too much pressure applied | Patch     |
| `feat(something)` | feat(pencil): add 'graphiteWidth' option                           | Minor     |
| `perf(something)` | perf(pencil): remove graphiteWidth option                          | Major     |
