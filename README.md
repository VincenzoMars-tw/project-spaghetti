This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Commits and lint

This project uses **Husky** (Git hooks), **Commitizen** (commit message wizard), and **Commitlint** (Conventional Commits validation).

### Commitizen

- **`npm run commit`** — runs the interactive wizard to write the commit message (type, scope, description, body, breaking changes, etc.).
- **`npm run commit:retry`** — retries after a failed commit (e.g. due to a commitlint error).

Required format: `type(scope?): description` (e.g. `feat: add login`, `fix(api): handle timeout`).

### Running Commitizen with `git commit`

A Git alias can be set so that **`git commit`** (without `-m`) runs the Commitizen wizard. Run once:

```bash
npm run prepare:git
```

Then:

- **`git commit`** (without `-m`) → runs the Commitizen wizard (requires a real terminal with TTY).
- **`git commit -m "message"`** → performs a normal commit.

In terminals without a TTY (e.g. some IDE integrated terminals), use **`npm run commit`** instead of `git commit`.

### Husky

- **Pre-commit** — runs `lint-staged` (ESLint and Prettier on staged files).
- **Commit-msg** — validates the message with Commitlint (Conventional Commits).

Recommended flow: `git add .` → `npm run commit` (or `git commit` in a real terminal) → hooks run lint and validation.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
