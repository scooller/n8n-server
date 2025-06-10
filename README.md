# n8n Server Setup

This project sets up an n8n server using Docker. Below are the instructions and details for getting started.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Docker and command line usage.

## Project Structure

```
n8n-server
├── docker
│   ├── docker-compose.yml
│   └── .env.example
├── scripts
│   └── init.sh
├── config
│   └── n8n.config.json
└── README.md
```

## Setup Instructions

1. **Clone the Repository**

   Clone this repository to your local machine:

   ```bash
   git clone <repository-url>
   cd n8n-server
   ```

2. **Configure Environment Variables**

   Copy the example environment file and modify it as needed:

   ```bash
   cp docker/.env.example docker/.env
   ```

   Update the `.env` file with your database credentials and other necessary configurations.

3. **Start the n8n Server**

   Use Docker Compose to start the n8n server:

   ```bash
   cd docker
   docker-compose up -d
   ```

4. **Initialize the Server**

   Run the initialization script to set up the server:

   ```bash
   cd ../scripts
   ./init.sh
   ```

5. **Access the n8n Interface**

   Once the server is running, you can access the n8n interface by navigating to `http://localhost:5678` in your web browser.

## Usage

- Follow the on-screen instructions in the n8n interface to create workflows and automate tasks.
- Refer to the official n8n documentation for detailed usage guidelines and advanced configurations.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.