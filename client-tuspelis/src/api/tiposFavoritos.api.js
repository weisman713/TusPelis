import axios from 'axios';
import { ACCESS_TOKEN, baseUrl } from "../constants/global";

const tiposFavoritosApi = axios.create({
    baseURL: `${baseUrl}tipos_favoritos`
})

tiposFavoritosApi.interceptors.request.use(
    (config) => {
        const token = localStorage.getItem(ACCESS_TOKEN);
        if (token) {
            config.headers.Authorization = `Bearer ${token}`;
        }
        return config;
    },
    (error) => {
        return Promise.reject(error);
    }
)

export const getAllTipos = async () => { return tiposFavoritosApi.get("/"); }

export const createTipo = (data) => { return tiposFavoritosApi.post("/", data); }

export const deleteTipo = (id) => { return tiposFavoritosApi.delete(`/${id}/`); }

export const getTipo = (id) => { return tiposFavoritosApi.get(`/${id}/`); }

export const updateTipo = (id, data) => { return tiposFavoritosApi.put(`/${id}/`, data); }