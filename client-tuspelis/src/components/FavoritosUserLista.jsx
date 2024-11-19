import { useEffect, useState } from "react";
import { getAllFavoritosUser } from "../api/favoritosUser.api";


export function FavoritosUserList() {
    const [listaData, setListaData] = useState([]);

    useEffect(() => {
        const loadData = async ()  => {
            const data = await getAllFavoritosUser();
            console.log(data);
            setListaData(data);
        }
        loadData();
    }, [])

    return (
        <div>
            {
                listaData.map(item => (
                    <div key={item.id_favoritos_user}>
                        <h3>{item.id_user} - {item.id_favorito}</h3>
                    </div>
                ))
            }
        </div>
    )
}