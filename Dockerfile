FROM n8nio/n8n:latest

USER root

# تثبيت Chromium والمتطلبات
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# إخبار Puppeteer باستخدام Chromium المثبت
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# تثبيت Puppeteer
RUN npm install puppeteer

USER node
