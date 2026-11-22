# Guillaume Chirache's personal website

This repository hosts the code for my [personal website](https://chirache.fr). It uses the [Zola](https://www.getzola.org) static site generator and the [Tailwind CSS](https://tailwindcss.com) framework.

## Local development

Prerequisites: Zola and Node.js.

Install all npm dependencies (including Tailwind CSS) with `npm install`.

Use `npm run watch` to launch both the Zola development server and the Tailwind CLI watch process. The local development website is then served at [http://127.0.0.1:1111](http://127.0.0.1:1111).

## Deployment

Deployment to Cloudflare is performed on each push.
