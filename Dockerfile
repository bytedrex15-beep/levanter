FROM quay.io/lyfe00011/md:beta

# 1. Weka build tools zinazokosekana (make, g++, python)
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# 2. Clone repo
RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE/
WORKDIR /root/LyFE/

# 3. Install dependencies (sasa hivi sqlite3 itapita bila error)
RUN yarn install

CMD ["npm", "start"]
