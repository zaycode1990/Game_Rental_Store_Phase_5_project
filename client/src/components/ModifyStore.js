import React, {useState} from 'react'

function ModifyStore({ gameUpdate, game_id, handleUpdatedGame}) {
  
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
      body: JSON.stringify(addedGame),
    });

    gameUpdate(addedGame)
  }

  function handleGameModify() {
    // add fetch request e.preventDefault()
const modifiedContents = {
        title,
        platform,
        publisher,
        inventory,
        img
      }
    
    
    fetch(`/game/${game_id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      }, body: JSON.stringify(modifiedContents),
    }).then((r) => r.json()).then((updatedGame) => handleUpdatedGame(updatedGame))}


return (
    <div>

<h1 style={h1Style}>Modify or Add Games to store</h1>


    <form label="Modify Games in Store" className='formStyle' >
        <input type="text" required placeholder='title' value={title} onChange={(e) => { setTitle(e.target.value) }} />
        <input type="text" required placeholder='platform' value={platform} onChange={(e) => { setPlatform(e.target.value) }} />
        <input type="text" required placeholder='publisher' value={publisher} onChange={(e) => { setPublisher(e.target.value) }} />
        <input type="number" required placeholder='inventory' value={inventory} onChange={(e) => {setInventory(e.target.value) }} />
        <input type="text" required placeholder='img' value={img} onChange={(e) => { setImg(e.target.value) }} />
        <button onSubmit={handleAddGame} type="submit">Add Game</button>
        <button type="submit">Update Game</button>
      </form>
    </div>
  )
}
  


export default ModifyStore