import axios from "axios";
import { baseUrl, ACCESS_TOKEN, REFRESH_TOKEN } from "../constants/global";

export const authApi = axios.create({
    baseURL: `${baseUrl}auth`
});

authApi.interceptors.request.use(
    (config) => {
        const token = localStorage.getItem(ACCESS_TOKEN);
        if(token){
            config.headers.Authorization = `Bearer ${token}`;
        }
        return config;
    },
    (error) => {
        return Promise.reject(error);
    }
)

export const refreshAuth = async (refreshToken) => { return authApi.post("/token/refresh/", { refresh: refreshToken }); }