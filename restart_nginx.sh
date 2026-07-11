#!/bin/bash
echo "=========================================="
echo "Restarting Nginx service..."
echo "=========================================="
sudo systemctl restart nginx

echo ""
echo "Checking Nginx status..."
sudo systemctl status nginx --no-pager

echo ""
echo "Nginx restart completed at: $(date)"
