# Personal Portfolio

This is my personal website, thanks for checking it out!

## Tech Stack

- Ruby / Rails / PostgreSQL
- Hotwire (Turbo + Stimulus) + Tailwind CSS
- RSpec for testing
- Deployed on Heroku

## Setup

```bash
# Install dependencies
bundle install
npm install

# Setup database
bin/rails db:setup

# Start server
bin/dev
```

Visit `http://localhost:3000`

## Environment Variables

Optional configuration in `.env`:
- `SAMPLE_WEBSITE_URL` - URL to sample project
- `RESUME_PATH` - Path to resume PDF

## Deployment

```bash
git push heroku main
heroku run rails db:migrate
```

## License

All rights reserved.
