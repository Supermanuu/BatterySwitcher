
# Sofle Battery Switcher

[![CI](https://github.com/Supermanuu/BatterySwitcher/actions/workflows/gerber.yml/badge.svg?branch=main)](https://github.com/Supermanuu/BatterySwitcher/actions/workflows/gerber.yml)

We are triying yo make a battery switch for the Sofle Keyboard, or properly said, the Pro Micro board used by the Sofle Keyboard.

Our goal is to have a PCB that could short and open the baterry supply via a switch, keeping as low profile as possible and doing it as integrated as possible

## Setup

In order to use this repo you should add a `KICAD_3RD_PARTY` variable with `${KIPRJMOD}/3rdparty/` value.

## Used plugins

* For download parts from [Component Search Engine](https://componentsearchengine.com/): [Import-LIB-KiCad-Plugin](https://github.com/Steffen-W/Import-LIB-KiCad-Plugin)

## Documentation

See [the documentation](doc\documentation.md).

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
