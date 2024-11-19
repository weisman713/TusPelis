import { BrowserRouter, Routes, Route, Navigate, Outlet } from 'react-router-dom';
//Importamos las paginas
import { TipoFavoritoPagina } from './pages/TipoFavoritoPagina';
import { TipoFavoritoForm } from './pages/TipoFavoritoForm';
import { FavoritoForm } from './pages/FavoritoForm';
import { FavoritoPagina } from './pages/FavoritoPagina';
import { FavoritoUserForm } from './pages/FavoritoUserForm';
import { FavoritoUserPagina } from './pages/FavoritoUserPagina';
import { Login } from './pages/Login';
import { Register } from './pages/Register';
import { Home } from './pages/Home';

import { ProtectedRoute } from './components/ProtectedRoute';

//Importamos los errors pages
import { NotFound } from './pages/NotFound';
//Importamos el navigation
import { Navigation } from './components/navigation';
//Importamos el modulo de notificaciones
import { Toaster } from 'react-hot-toast'

function Logout(){
  localStorage.clear();
  return <Navigate to="/login"/>
}

function RegisterAndLogout(){
  localStorage.clear();
  return <Register />
}

function App() {
  return (
    <div className="min-h-screen flex flex-col items-center transition duration-200 dark:bg-gray-900 p-10 dark:text-white">

      <BrowserRouter>

        <Routes>
          <Route path="*" element={<Navigate to="/404" />} />

          {/* Rutas públicas */}
          <Route path="/login" element={<Login />} />
          <Route path="/logout" element={<Logout />} />
          <Route path="/register" element={<RegisterAndLogout />} />

          {/* Rutas protegidas */}
          <Route
            element={
              <ProtectedRoute>
                <Navigation />
                <Outlet />
              </ProtectedRoute>
            }
          >
            <Route path="/" element={<Home />} />
            <Route path="/tipos-favoritos" element={<TipoFavoritoPagina />} />
            <Route path="/tipos-favoritos/add" element={<TipoFavoritoForm />} />
            <Route path="/tipos-favoritos/:id" element={<TipoFavoritoForm />} />
            <Route path="/favoritos" element={<FavoritoPagina />} />
            <Route path="/favoritos/add" element={<FavoritoForm />} />
            <Route path="/favoritos/:id" element={<FavoritoForm />} />
            <Route path="/favoritos-user" element={<FavoritoUserPagina />} />
            <Route path="/favoritos-user/add" element={<FavoritoUserForm />} />
          </Route>

          {/* Errors Page */}
          <Route path="/404" element={<NotFound />} />
        </Routes>
        <Toaster />
      </BrowserRouter>
    </div>
  )
}

export default App