import Image from "next/image";

export default function Home() {
  return (
    <div className="flex h-screen bg-black">
      <div className="w-screen h-screen flex flex-col justify-center items-center">
        <Image width={512} height={512} src="/logo.png" alt="Platforms on Vercel" className="w-48 h-48" />
        <div className="text-center max-w-screen-sm mb-10">
          <h1 className="text-stone-200 font-bold text-2xl">ZTimeDB</h1>
          <p className="text-stone-400 mt-5">
            This is a starter kit that uses Next-Auth for simple email + password login and a Vercel Postgres database
            to persist the data.
          </p>
        </div>
        <div className="flex space-x-3">
          {/* <Link
            href="/protected"
            prefetch={false}
            className="text-stone-400 underline hover:text-stone-200 transition-all"
          >
            Protected Page
          </Link> */}
        </div>
      </div>
    </div>
  );
}
