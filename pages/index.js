import Head from "next/head";
import Link from "next/link";

export default function Home() {
  return (
    <>
      <Head>
        <title>Scalable Web App</title>
        <meta name="description" content="Starter scaffold for a scalable web app" />
      </Head>

      <main style={{ padding: 24, fontFamily: "sans-serif" }}>
        <h1>Scalable Web App (Scaffold)</h1>
        <p>This is a starter Next.js app wired for Prisma/Postgres and Redis.</p>
        <ul>
          <li><Link href="/api/health">/api/health</Link></li>
          <li><Link href="/api/items">/api/items</Link></li>
        </ul>
      </main>
    </>
  );
}
