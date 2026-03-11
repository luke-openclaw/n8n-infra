# n8n-infra 🤖

Self-hosted n8n infrastructure configuration and management scripts. This repository enables a professional "infrastructure-as-code" approach to managing our automation engine.

## 🏗️ Architecture
- **Mode:** Native Node.js (Non-Docker) managed via PM2.
- **Service Name:** `n8n-host`
- **Data Location:** `/media/gopi/2Tb/apps/n8n/data`
- **Access:** Proxied via Caddy at `/n8n/`

## 📋 Components
- `n8n.env`: Core environment variables and security settings.
- `start_n8n.sh`: Portable launcher script that loads envs and triggers the native binary.
- `docker-compose.yml`: Kept for reference/fallback if we return to containerization.

## 🚀 Lift and Shift (Migration Guide)
To move this n8n instance to another machine:

1. **Clone this repo:**
   ```bash
   git clone https://github.com/luke-openclaw/n8n-infra.git
   ```

2. **Restore Data:**
   Copy your existing `data/` folder (containing `database.sqlite` and the `config` encryption key) to the target machine.

3. **Configure Paths:**
   Edit `n8n.env` and update the `N8N_USER_FOLDER` variable to point to your new data directory path.

4. **Launch:**
   Ensure `n8n` is installed on the host (`npm install -g n8n`) and run:
   ```bash
   ./start_n8n.sh
   ```

## 🛠️ Management Commands
- **Status:** `pm2 status`
- **Logs:** `pm2 logs n8n-host`
- **Restart:** `pm2 restart n8n-host`
- **Stop:** `pm2 stop n8n-host`
