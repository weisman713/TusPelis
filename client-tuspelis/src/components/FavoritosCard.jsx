import { useState } from "react";
import { useNavigate } from "react-router-dom";

export function FavoritosCard({ favorito }) {
    const navigate = useNavigate();
    const [showSynopsis, setShowSynopsis] = useState(false);
    let hoverTimeout;

    // Funciones para manejar el mouse hover delay
    const handleMouseEnter = () => {
        hoverTimeout = setTimeout(() => setShowSynopsis(true), 500); // 500ms delay
    };

    const handleMouseLeave = () => {
        clearTimeout(hoverTimeout);
        setShowSynopsis(false);
    };

    return (
        <div 
            className="relative bg-white dark:bg-gray-800 shadow-lg rounded-lg overflow-hidden cursor-pointer transform hover:scale-105 transition-transform duration-200"
            onClick={() => navigate('/favoritos/' + favorito.id_favorito)}
            onMouseEnter={handleMouseEnter}
            onMouseLeave={handleMouseLeave}
        >
            <img 
                src={favorito.imagen_caratula} 
                alt={"Caratula_" + favorito.titulo} 
                className="w-full h-48 object-cover"
            />
            <div className="p-4">
                <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">{favorito.titulo}</h3>
                <h5 className="text-gray-600 dark:text-gray-400">{favorito.anio} - {favorito.genero}</h5>
            </div>

            {/* Tooltip de sinopsis */}
            {showSynopsis && (
                <div className="absolute top-0 left-0 w-full h-full bg-black bg-opacity-80 text-white p-4 flex items-center justify-center rounded-lg z-10 transition-opacity duration-300">
                    <p className="text-sm">{favorito.sinopsis}</p>
                </div>
            )}
        </div>
    );
}
