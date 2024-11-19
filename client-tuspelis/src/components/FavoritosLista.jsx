import { useEffect, useState } from "react";
import { getAllFavoritos } from "../api/favoritos.api";
import { FavoritosCard } from "./FavoritosCard";

export function FavoritosList() {
    const [listaData, setListaData] = useState([]);

    useEffect(() => {
        const loadData = async () => {
            const data = await getAllFavoritos();
            console.log(data);
            setListaData(data.data);
        };
        loadData();
    }, []);

    return (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 p-4">
            {listaData.map(item => (
                <FavoritosCard key={item.id_favorito} favorito={item} />
            ))}
        </div>
    );
}
