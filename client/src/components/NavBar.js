import React, { useContext } from 'react'
import { useNavigate } from 'react-router-dom'
import { MDBBadge, MDBIcon } from 'mdb-react-ui-kit';
import { UserContext } from '../UserContext'


function NavBar({ gamesInCart }) {


  const { user, setUser } = useContext(UserContext)


  const nav = useNavigate()
  const navigate = (e) => {
    e.preventDefault();
    nav(`/${e.target.name.toLowerCase()}`)

  }

  const handleLogout = (e) => {

    setUser({ id: false })
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        nav("/login")
      }
    })
  }
  return (
    <nav className="navBar">
      {user.id === false ? null : <a className='mx-3' >
        <MDBIcon className="layer1" fas icon='shopping-cart' size='lg' />
        <MDBBadge className='layer2' color='danger' notification pill >
          {gamesInCart.length}
        </MDBBadge>
      </a>}
      <a href="/login" name="login" onClick={navigate}>
        Login
      </a>
      <a href="/" name="" onClick={navigate}>
        Home
      </a>
      <a href="/games" name="games" onClick={navigate}>
        Games
      </a>

      {user.admin ?
        <>
          <a href="/modifystore" name="modifystore" onClick={navigate}>
            ModifyStore
          </a>
        </>
        :
        <a href="/cart" name="cart" onClick={navigate}>
          Cart
        </a>
      }


      {user.id === false ? null : <button type="button" name="logout" className="btn btn-primary btn-rounded" onClick={handleLogout}>Logout</button>}

    </nav>
  )
}

export default NavBar