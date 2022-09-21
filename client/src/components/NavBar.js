import React from 'react'
import {useNavigate} from 'react-router-dom'

function NavBar() {
    const nav = useNavigate()

const navigate = (e) => {
    e.preventDefault();
    nav(`/${e.target.textContent.toLowerCase()}`)
}
  return (
    <nav className="navbar">

    <a href="/login" onClick={navigate}>
      Login
    </a>
    <a href="/signup" onClick={navigate}>
      Signup
    </a>
    <a href="/home" onClick={navigate}>
      Home
    </a>
    <a href="/games" onClick={navigate}>
      Games
    </a>
    <a href="/cart" onClick={navigate}>
      Cart
    </a>
    <a href="/modifystore" onClick={navigate}>
      Modify Store
    </a>
    <a href="/storeledger" onClick={navigate}>
      storeledger
    </a>
  </nav>
  )
}

export default NavBar