import useAuth from "../../data/hook/useAuth"
import { IconeAjustes, IconeCasa, IconeSair, IconeSino } from "../icons"
import Logo from "./Logo"
import MenuItem from "./MenuItem"

export default function MenuLateral() {

    const { logout } = useAuth()

    return (
        <aside className={`
            flex flex-col
            bg-gray-200 text-gray-700
            dark:bg-gray-900
        `}>
           
            <ul className="flex-grow">
                <MenuItem url="/" texto="Início" icone={IconeCasa} />
            </ul>
            <ul>
                <MenuItem texto="Sair" icone={IconeSair}
                    onClick={logout}
                    className={`
                        text-red-600 dark:text-red-400
                        hover:bg-red-400 hover:text-white
                        dark:hover:text-white
                    `}
                />
            </ul>
        </aside>
    )
}