# MU/TH/UR Simulator for Alien RPG

This project is a custom FoundryVTT module for the Alien RPG by Free League, providing a MU/TH/UR simulator via NodeJS. The module allows Game Masters to interact with the MU/TH/UR AI directly within their FoundryVTT game sessions.

## Features

- Simulate MU/TH/UR commands and responses
- Real-time command processing
- Integrated with FoundryVTT

## Installation

### Prerequisites

- [Node.js](https://nodejs.org/) (version 12 or later)
- [FoundryVTT](https://foundryvtt.com/)

### Setting Up the Module

1. Clone this repository:
    ```sh
    git clone https://github.com/benthecloudguy/alien-rpg-muthur.git
    cd alien-rpg-muthur
    ```

2. Install the dependencies:
    ```sh
    npm install
    ```

3. Start the server:
    ```sh
    npm start
    ```

### Adding the Module to FoundryVTT

1. Compress the `alien-rpg-muthur` directory into a zip file.
2. In FoundryVTT, go to `Configuration and Setup` > `Add-on Modules` > `Install Module` > `Choose File` and select the zip file.
3. Enable the module in your game.

## Usage

Once the module is installed and enabled in FoundryVTT:

1. Start your FoundryVTT server and launch your game.
2. The MU/TH/UR simulator will initialize and connect to the NodeJS server.
3. Interact with MU/TH/UR using the command interface provided by the module.

## File Structure


- `dist/`: Directory for static files served by the NodeJS server.
- `module/`: Contains the client-side JavaScript and CSS files for the module.
- `lang/`: Contains localization files.
- `templates/`: Contains HTML templates for the module.
- `module.json`: Describes the module to FoundryVTT.
- `package.json`: Manages NodeJS dependencies and scripts.
- `server.js`: NodeJS server handling MU/TH/UR commands and responses.

## Development

To contribute or modify this module:

1. Clone the repository and create a new branch for your feature or bugfix.
2. Make your changes and test them locally.
3. Submit a pull request with a detailed description of your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions or support, please open an issue on the [GitHub repository](https://github.com/benthecloudguy/alien-rpg-muthur/issues).
