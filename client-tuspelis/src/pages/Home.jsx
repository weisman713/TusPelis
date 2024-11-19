import { useEffect, useState } from 'react';
import { authApi } from '../api/auth.api';

export function Home() {
    const [nombre, setNombre] = useState("None");
    const [apellido, setApellido] = useState("None");
    const [username, setUsername] = useState("");

    useEffect(() => {
        const loadData = async () => {
            const res = await authApi.get("/me");
            if (res.data) {
                setNombre(res.data.first_name || "");
                setApellido(res.data.last_name || "");
                setUsername(res.data.username || "");
            }
        };
        loadData();
    }, []);

    return (

        <div className="min-h-screen w-full bg-gradient-to-br from-cyan-900 via-cyan-800 to-cyan-950 flex items-center justify-center px-4 py-12 rounded-lg mt-2">
            <div className="w-full max-w-7xl mx-auto">
                <div className="flex flex-col-reverse lg:flex-row items-center gap-12 lg:gap-20">
                {/* Sección de contenido */}
                <div className="w-full lg:w-1/2 space-y-8 text-center lg:text-left">
                    <div className="space-y-4">
                    <h1 className="text-4xl md:text-5xl xl:text-6xl font-bold text-white">
                        Bienvenido,{' '}
                        <span className="text-gray-900 inline-block hover:translate-x-2 transition-transform duration-300">
                        {username}
                        </span>
                    </h1>
                    <p className="text-xl md:text-2xl text-white/90 font-light">
                        {nombre} {apellido}
                    </p>
                    </div>

                    <p className="text-lg md:text-xl text-white/80 max-w-xl">
                    Descubre las mejores{' '}
                    <span className="font-semibold text-white inline-block hover:scale-110 transition-transform duration-300">
                        películas
                    </span>{' '}
                    y{' '}
                    <span className="font-semibold text-white inline-block hover:scale-110 transition-transform duration-300">
                        series
                    </span>{' '}
                    en nuestro sitio.
                    </p>

                </div>

                {/* Sección de imagen */}
                <div className="w-full lg:w-1/2">
                    <div className="relative group">
                    <div className="absolute -inset-1 bg-gradient-to-r from-cyan-800 to-blue-800 rounded-xl blur opacity-40 group-hover:opacity-75 transition duration-1000 group-hover:duration-200" />
                    <div className="relative">
                        <img
                        src="https://i.imgur.com/WdmDj5e.jpg"
                        alt="Películas y Series"
                        className="w-full rounded-xl shadow-2xl transition-all duration-500 group-hover:shadow-cyan-500/50 group-hover:shadow-2xl"
                        />
                        <div className="absolute inset-0 rounded-xl bg-gradient-to-t from-black/40 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
                    </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    );
}

 