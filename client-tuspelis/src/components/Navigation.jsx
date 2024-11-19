import { Link } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { authApi } from '../api/auth.api';

export function Navigation() {
    const [nombre, setNombre] = useState("None"); 
    const [apellido, setApellido] = useState("None"); 
    const [username, setUsername] = useState(""); 
    const [isProfileMenuOpen, setIsProfileMenuOpen] = useState(false);

    useEffect(() => {
        const loadData = async () =>{
            const res = await authApi.get("/me");
            console.log(res);
            if(res.data){
                setNombre(res.data.first_name ? res.data.first_name : "");
                setApellido(res.data.last_name ? res.data.last_name : "");
                setUsername(res.data.username ? res.data.username : "");
            }
        }
        loadData();
        const closeMenu = (e) => {
            if (!e.target.closest('#user-menu-button')) {
                setIsProfileMenuOpen(false);
            }
        };

        document.addEventListener('click', closeMenu);
        return () => document.removeEventListener('click', closeMenu);
    }, []);

    return (
        <nav className="bg-gray-800 rounded-lg w-full">
            <div className="px-2 sm:px-6 lg:px-8">
                <div className="relative flex h-16 items-center justify-between">
                    <div className="absolute inset-y-0 left-0 flex items-center sm:hidden">
                        
                    </div>
                    <div className="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                        <div className="flex shrink-0 items-center">
                            <img className="size-8 rounded-full" src="https://i.imgur.com/3d6NviB.jpg" alt="Mi imagen favorita 2" />
                        </div>
                        <div className="hidden sm:ml-6 sm:block">
                            <div className="flex space-x-4">
                                <Link to="/" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                                    Home
                                </Link>
                                <Link to="/favoritos" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                                    Favoritos
                                </Link>
                                <Link to="/tipos-favoritos" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                                    Tipos Favoritos
                                </Link>
                            </div>
                        </div>
                    </div>
                    <div className="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                       

                        <div className="relative ml-3">
                            <div>
                                <button 
                                    type="button" 
                                    className="relative flex rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" 
                                    id="user-menu-button"
                                    onClick={(e) => {
                                        e.stopPropagation();
                                        setIsProfileMenuOpen(!isProfileMenuOpen);
                                    }}
                                >
                                    <span className="absolute -inset-1.5"></span>
                                    <span className="sr-only">Open user menu</span>
                                    <img className="size-8 rounded-full" src="https://i.imgur.com/FWvgPjl.jpg" alt="Mi imagen favorita" />
                                </button>
                            </div>

                            {isProfileMenuOpen && (
                                <div className="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black/5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabIndex="-1">
                                    <div className="px-4 py-2 text-sm text-gray-700">
                                        <p className="font-medium">{nombre}</p>
                                        <p>{apellido}</p>
                                        <p className="text-gray-500">@{username}</p>
                                    </div>
                                    <div className="border-t border-gray-100"></div>
                                    <a href="/logout" className="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem" tabIndex="-1">Sign out</a>
                                </div>
                            )}
                        </div>
                    </div>
                </div>
            </div>

            <div className="sm:hidden" id="mobile-menu">
                <div className="space-y-1 px-2 pb-3 pt-2">
                <Link to="/" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                    Home
                </Link>
                <Link to="/favoritos" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                    Favoritos
                </Link>
                <Link to="/tipos-favoritos" className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
                    Tipos Favoritos
                </Link>
                </div>
            </div>
        </nav>
    );
}