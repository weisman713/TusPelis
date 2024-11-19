import axios from "axios";
import { ACCESS_TOKEN, baseUrl } from "../constants/global";

const favoritosUserApi = axios.create({
    baseURL: `${baseUrl}favoritos_user`
})

favoritosUserApi.interceptors.request.use(
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
export const getAllFavoritosUser = async () => { return favoritosUserApi.get("/"); }