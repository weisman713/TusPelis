import { useNavigate } from "react-router-dom";

export function TipoFavoritoCard({ item }) {
    const navigate = useNavigate();

    return (
        <tr
            className="hover:bg-indigo-50 dark:hover:bg-indigo-900 transition-colors duration-150 cursor-pointer"
            onClick={() => navigate('/tipos-favoritos/' + item.id_tipo)}
        >
            <td className="px-6 py-4 border-b border-gray-200 dark:border-gray-700">
                <span className="text-sm font-medium text-gray-900 dark:text-gray-100">{item.descripcion}</span>
            </td>
            <td className="px-6 py-4 border-b border-gray-200 dark:border-gray-700">
                <span className={`text-sm font-medium ${item.estado === "A" ? "text-green-600 dark:text-green-400" : "text-red-600 dark:text-red-400"}`}>
                    {item.estado === "A" ? "Activo" : "Inactivo"}
                </span>
            </td>
        </tr>
    );
}

