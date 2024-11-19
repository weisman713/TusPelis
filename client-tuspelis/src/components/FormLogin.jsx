import { useState } from "react";
import { authApi } from "../api/auth.api";
import { useNavigate } from "react-router-dom";
import { ACCESS_TOKEN, REFRESH_TOKEN } from "../constants/global";

export function FormLogin({router, method}){
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [confirmPassword, setConfirmPassword] = useState("");
    const [username, setUsername] = useState("");
    const [firstName, setFirstName] = useState("");
    const [lastName, setLastName] = useState("");
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState("");
    const navigate = useNavigate();

    const name = method === "Login" ? "Login" : "Register";

    const validateForm = () => {
        if (method === "Register") {
            if (password !== confirmPassword) {
                setError("Las contraseñas no coinciden");
                return false;
            }
            if (password.length < 6) {
                setError("La contraseña debe tener al menos 6 caracteres");
                return false;
            }
            if (!username || !firstName || !lastName) {
                setError("Todos los campos son requeridos");
                return false;
            }
        }
        if (!email || !password) {
            setError("Todos los campos son requeridos");
            return false;
        }
        return true;
    };

    const handleSubmit = async(e) =>{
        e.preventDefault();
        setError("");
        
        if (!validateForm()) return;
        
        setLoading(true);

        try {
            if (method === "Register") {
                const registerData = {
                    email,
                    password,
                    username,
                    first_name: firstName,
                    last_name: lastName,    
                };
                
                const res = await authApi.post("/register", registerData);
                console.log("Usuario registrado:", res.data);
                navigate("/login");
                alert("Registro exitoso! Por favor inicia sesión.");
                
            } else {
                const res = await authApi.post(router, {email, password});
                localStorage.setItem(ACCESS_TOKEN, res.data.access);
                localStorage.setItem(REFRESH_TOKEN, res.data.refresh);
                navigate("/");
            }
        } catch (error) {
            console.error("Error:", error);
            setError(
                error.response?.data?.message || 
                "Ocurrió un error. Por favor intenta de nuevo."
            );
        } finally {
            setLoading(false);
        }
    };
    
    return (
    <div className="min-h-screen flex items-center justify-center bg-gray-900">
        <div className="bg-gray-900 flex justify-center items-center h-screen w-full">
            <div className="w-1/2 h-screen hidden lg:block">
                <img src="https://i.imgur.com/5JaVvmo.png" alt="Placeholder" className="object-cover w-full h-full" />
            </div>
            <div className="lg:p-36 md:p-52 sm:p-20 p-8 w-full lg:w-1/2 text-gray-950">
                <h1 className="text-2xl font-semibold mb-4 text-white">
                    {method === "Login" ? "Log into MyMovies" : "Register for MyMovies"}
                </h1>
                
                {error && (
                    <div className="mb-4 p-3 bg-red-100 border border-red-400 text-red-700 rounded">
                        {error}
                    </div>
                )}
                
                <form onSubmit={handleSubmit}>
                    {method === "Register" && (
                        <>
                            <div className="mb-4">
                                <label htmlFor="username" className="block text-white bg-gray-900">Username</label>
                                <input 
                                    type="text" 
                                    id="username" 
                                    className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                    autoComplete="off"
                                />
                            </div>
                            

                            <div className="mb-4">
                                <label htmlFor="firstName" className="block text-white bg-gray-900">First Name</label>
                                <input 
                                    type="text" 
                                    id="firstName" 
                                    className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                                    value={firstName}
                                    onChange={(e) => setFirstName(e.target.value)}
                                    autoComplete="off"
                                />
                            </div>
                            

                            <div className="mb-4">
                                <label htmlFor="lastName" className="block text-white bg-gray-900">Last Name</label>
                                <input 
                                    type="text" 
                                    id="lastName" 
                                    className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                                    value={lastName}
                                    onChange={(e) => setLastName(e.target.value)}
                                    autoComplete="off"
                                />
                            </div>
                        </>
                    )}
                    
                    <div className="mb-4 bg-sky-100">
                        <label htmlFor="email" className="block text-white bg-gray-900">Email</label>
                        <input 
                            type="email" 
                            id="email" 
                            className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            autoComplete="off" 
                        />
                    </div>
                    
                    <div className="mb-4">
                        <label htmlFor="password" className="block text-white">Password</label>
                        <input 
                            type="password" 
                            id="password" 
                            className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                            autoComplete="off"
                        />
                    </div>
                    
                    {method === "Register" && (
                        <div className="mb-4">
                            <label htmlFor="confirmPassword" className="block text-white">Confirm Password</label>
                            <input 
                                type="password" 
                                id="confirmPassword" 
                                className="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500 text-gray-950"
                                value={confirmPassword}
                                onChange={(e) => setConfirmPassword(e.target.value)}
                                autoComplete="off"
                            />
                        </div>
                    )}

                    <button 
                        type="submit" 
                        className="bg-red-500 hover:bg-blue-600 text-white font-semibold rounded-md py-2 px-4 w-full"
                        disabled={loading}
                    >
                        {loading ? "Processing..." : name}
                    </button>
                </form>
                
                <div className="mt-6 text-green-500 text-center">
                    {method === "Login" ? (
                        <a href="/register" className="hover:underline">Sign up Here</a>
                    ) : (
                        <a href="/login" className="hover:underline">Already have an account? Login</a>
                    )}
                </div>
            </div>
        </div>
    </div>
    );
}