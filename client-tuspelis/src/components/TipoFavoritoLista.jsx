import { useEffect, useState } from "react"; 
import { getAllTipos } from "../api/tiposFavoritos.api.js";
import { TipoFavoritoCard } from "./TipoFavoritoCard.jsx";

export function TiposFavoritosList() {
    const [listaData, setListaData] = useState([]);

    useEffect(() => {
        const loadData = async () => {
            const res = await getAllTipos();
            console.log(res);
            setListaData(res.data);
        };
        loadData();
    }, []);

    return (
        <div className="inline-block min-w-full py-2 sm:px-6 lg:px-8">
            <div className="overflow-hidden shadow-lg rounded-lg border border-gray-200 dark:border-gray-700">
                <table className="min-w-full bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200">
                    <thead className="border-b bg-gray-100 dark:bg-gray-700">
                        <tr>
                            <th className="px-6 py-4 text-left font-semibold">Tipo</th>
                            <th className="px-6 py-4 text-left font-semibold">Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        {listaData.map(item => (
                            <TipoFavoritoCard key={item.id_tipo} item={item} />
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
}
