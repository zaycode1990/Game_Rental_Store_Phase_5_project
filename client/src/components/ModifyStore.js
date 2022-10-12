import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom';

function ModifyStore({ updateGames, game_id, handleUpdatedGame, setGame_Id }) {

  const nav = useNavigate()

  const h1Style = {
    textAlign: "center",
    marginTop: "5%",
  }

  const [title, setTitle] = useState("")
  const [platform, setPlatform] = useState("")
  const [publisher, setPublisher] = useState("")
  const [inventory, setInventory] = useState("")
  const [img, setImg] = useState("")


  function handleAddGame(e) {
    e.preventDefault()
    const addedGame = {
      title,
      platform,
      publisher,
      inventory,
      img
    }


    fetch('/games', {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(addedGame)
    }).then(r => r.json()).then(data => console.log(data)).catch(error => console.log(error))

    updateGames(addedGame)
  }

  function handleGameModify() {

    const modifiedContents = {
      title,
      platform,
      publisher,
      inventory,
      img
    }


    fetch(`/games/${game_id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      }, body: JSON.stringify(modifiedContents),
    }).then((r) => r.json()).then((updatedGame) => {
      handleUpdatedGame(updatedGame)


    }).catch(error => console.log(error))
    nav("/games")
    setGame_Id(0)
  }


  return (

    <>
      {game_id === 0 ? <>
        <h1 style={h1Style}>Add Games to store</h1>


        <form label="Modify Games in Store" onSubmit={handleAddGame} className='formStyle' >
          <input type="text" required placeholder='title' value={title} onChange={(e) => { setTitle(e.target.value) }} />
          <input type="text" required placeholder='platform' value={platform} onChange={(e) => { setPlatform(e.target.value) }} />
          <input type="text" required placeholder='publisher' value={publisher} onChange={(e) => { setPublisher(e.target.value) }} />
          <input type="number" required placeholder='inventory' value={inventory} onChange={(e) => { setInventory(e.target.value) }} />
          <input type="text" required placeholder='img' value={img} onChange={(e) => { setImg(e.target.value) }} />
          <button type="submit">Add Game</button>
        </form>
      </>
        :
        <>
          <h1 style={h1Style}>Update Game Contents</h1>


          <form label="Modify Games in Store" onSubmit={handleGameModify} className='formStyle' >
            <input type="text" placeholder='title' value={title} onChange={(e) => { setTitle(e.target.value) }} />
            <input type="text" placeholder='platform' value={platform} onChange={(e) => { setPlatform(e.target.value) }} />
            <input type="text" placeholder='publisher' value={publisher} onChange={(e) => { setPublisher(e.target.value) }} />
            <input type="number" placeholder='inventory' value={inventory} onChange={(e) => { setInventory(e.target.value) }} />
            <input type="text" placeholder='img' value={img} onChange={(e) => { setImg(e.target.value) }} />
            <button type="submit">Update Game</button>
          </form>
        </>
      }
    </>
  )
}



export default ModifyStore