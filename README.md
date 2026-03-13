# nix-is-great
All my nix files for my desktop environment can be found here. 

# General structure
~/flck
├── configuration.nix
├── flake.lock  --CURRENT-ACTIVE-GENERATION
├── flake.nix
└── hardware-configuration.nix

~/nix-is-great
├── flake.nix
├── github
│   └── assets
├── home
│   ├── minimal
│   │   └── home.nix
│   └── msftyago
│       └── home.nix
├── hosts
│   ├── #nitro.nix#
│   ├── nitro.nix
│   └── raspberry.nix
├── modules
│   ├── home-manager
│   └── nixos
│       ├── configuration.nix
│       ├── flake.lock
│       ├── flake.nix
│       └── hardware-configuration.nix
├── nixos
│   ├── configuration.nix
│   ├── flake.lock
│   ├── flake.nix
│   └── hardware-configuration.nix
├── overlays
├── pkgs
├── README.md
└── shell.nix

reference: https://github.com/EmergentMind/nix-config
