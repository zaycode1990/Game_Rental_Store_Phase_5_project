import React from 'react'
import {useNavigate} from 'react-router-dom'
import { MDBBadge, MDBIcon } from 'mdb-react-ui-kit';
function NavBar({gamesInCart}) {
    const nav = useNavigate()

const navigate = (e) => {
    e.preventDefault();
    nav(`/${e.target.name.toLowerCase()}`)
}
  return (
    <nav className="navBar">
      <a className='mx-3' href='/cart'>
        <MDBIcon className="layer1" fas icon='shopping-cart' size='lg' />
        <MDBBadge className='layer2' color='danger' notification pill >
          {gamesInCart.length}
        </MDBBadge>
      </a>
    <a href="/login" name="login" onClick={navigate}>
      Login
    </a>
    <a href="/signup" name="signup" onClick={navigate}>
      Signup
    </a>
    {/* <a href="/" name="/" onClick={navigate}>
      Home
    </a> */}
    <a href="/games" name="games" onClick={navigate}>
      Games
    </a>
    <a href="/cart" name="cart" onClick={navigate}>
      Cart
    </a>
    <a href="/modifystore" name="modifystore" onClick={navigate}>
      ModifyStore
    </a>
    <a href="/storeledger" name="storeledger" onClick={navigate}>
      storeledger
    </a>
  </nav>
  )
}

export default NavBar