import { Link } from "react-router-dom";
import { FavoritosList } from "../components/FavoritosLista";

export function FavoritoPagina() {
    return (
        <div className="container mx-auto px-4 py-8">
            
            <div className="flex items-baseline justify-between mb-8">
            <h1 className="text-3xl font-bold text-gray-800 dark:text-gray-200 mb-6 text-center">
                Favoritos
            </h1>
                <Link 
                    to="/favoritos/add" 
                    className="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 dark:bg-indigo-500 dark:hover:bg-indigo-600 transition-colors duration-150 shadow-md"
                >
                    Agregar Favorito
                </Link>
            </div>
            <FavoritosList />
        </div>
    );
}