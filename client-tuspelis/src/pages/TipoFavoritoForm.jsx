import { useEffect, useState } from 'react';
import { useForm } from 'react-hook-form'
import { useNavigate, useParams } from 'react-router-dom'
import { createTipo, deleteTipo, updateTipo, getTipo } from '../api/tiposFavoritos.api';
import { toast } from 'react-hot-toast'

export function TipoFavoritoForm(){
    const { register, handleSubmit, formState: { errors },setValue } = useForm();

    const navigate = useNavigate();

    const params = useParams();
    console.log("Params: " + params);

    const onSubmit = handleSubmit(async data => {
        console.log(data);
        //Se valida si está modificando
        if(params.id){
            console.log("Modificando el id: " + params.id);
            await updateTipo(params.id, data);
        }else{
            const res = await createTipo(data);
            console.log(res);
        }
        navigate("/tipos-favoritos");
        toast.success("Registro creado correctamente",{
            position: "bottom-right",
            style: {
                background: "#101010",
                color: "#ffff"
            }
        });
    });
    useEffect(() => {
        async function loadData() {
            if(params.id){
                console.log("Se solicitand los datos del id: " + params.id);
                const res = await getTipo(params.id);
                console.log(res);
                setValue('descripcion', res.data.descripcion);
                setValue('estado', res.data.estado);
            }

        }
        loadData();
    },[])

    return (
        <div>
        <h1 className="text-3xl font-bold text-gray-800 dark:text-gray-200 mb-6 pt-8">Formulario Tipo Favorito</h1>
        <div className="grid-rows-1 center py-2 pb-4 w-full pl-4 text-center bg-gray-700 rounded">
            
            <form onSubmit={onSubmit}>
                <input type="text" placeholder="Ingrese la descripción" name="txtDescripcion" 
                    className="block py-2.5 w-1/2 text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none 
                        dark:text-white dark:border-gray-600 
                        dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600
                        inline" id="txtDescripcion" {...register("descripcion", { required : true })} />
                {errors.descripcion && <span style={{color:"red"}}>La descripción del tipo es requerido</span>}
                <br />
                <select name="selEstado" className="rounded-md bg-transparent text-gray-400 underline p-3" id="selEstado"  {...register("estado", { required : true })}>
                    <option value="">Seleccione un valor</option>
                    <option value="A">Activo</option>
                    <option value="I">Inactivo</option>
                </select>
                {errors.estado && <span style={{color:"red"}}>El estado del tipo es requerido</span>}
                <br />
                <button className="px-4 py-2 bg-indigo-600 
                    text-white rounded-md hover:bg-indigo-700 dark:bg-indigo-500 dark:hover:bg-indigo-600 
                    transition-colors duration-150 shadow-md">Guardar</button>
            </form>
            {params.id && 
                (<button
                    onClick={async() => {
                        const accepted = window.confirm("¿Desea eliminar el tipo?");
                        if(accepted){
                            const res = await deleteTipo(params.id);
                        }
                        navigate("/tipos-favoritos");
                    }}
                >
                    Eliminar
                </button>)
            }
        </div>
        </div>

    )
}