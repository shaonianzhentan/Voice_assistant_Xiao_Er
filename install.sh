#!/bin/bash

# 写入文件
sudo cat>/etc/systemd/system/voice_assistant.service<<EOF
[Unit]
Description=voice_assistant

[Service]
WorkingDirectory=/home/pi/git/voice_assistant
ExecStart=/usr/bin/python main.py

[Install]
WantedBy=multi-user.target
EOF

# 开始运行
sudo systemctl start voice_assistant

# 查看状态
sudo systemctl status voice_assistant.service
