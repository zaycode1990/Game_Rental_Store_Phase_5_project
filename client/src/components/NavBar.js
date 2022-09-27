import React from 'react'
import {useNavigate} from 'react-router-dom'
function NavBar() {
    const nav = useNavigate()

const navigate = (e) => {
    e.preventDefault();
    nav(`/${e.target.name.toLowerCase()}`)
}
  return (
    <nav className="navBar">

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