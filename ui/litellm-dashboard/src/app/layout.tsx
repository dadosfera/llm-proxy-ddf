import type { Metadata } from "next";
import "./globals.css";

import { Quicksand } from "next/font/google";
const quicksand = Quicksand({ subsets: ["latin"], weight: ["400", "500", "700"] });

export const metadata: Metadata = {
  title: "Dadosfera LLM Proxy Dashboard",
  description: "Dadosfera LLM Proxy Admin UI",
  icons: { icon: "/assets/logos/logo-dadosfera.png" },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={quicksand.className}>{children}</body>
    </html>
  );
}
