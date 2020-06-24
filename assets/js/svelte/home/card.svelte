<script>
  const darkmode = new Darkmode();

  export let post_id = "";
  export let name = "";
  export let description = "";
  export let tags = [];

  function handleClick() {
    window.location.href=`/post/${post_id}`
  }
</script>

<style>
  button {
    display: flex;
    background: none;
    width: 100%;
    border: 1px solid white;
    flex-direction: column;
    margin-bottom: 5px;
    padding-top: 7px;
    padding-left: 10px;
    border-left: 1px solid black;
    border-top-right-radius: 10px;
    text-align: left;
    background-color: #dedede;
  }

  button:hover {
    border: 1px solid black;
  }

  h3 {
    margin: 0;
    margin-bottom: 7px;
    font-size: 1.7em;
    float: left;
    color: #303030;
  }

  p {
    margin: 0;
    font-size: 1.2em;
  }

  aside {
    width: 100%;
  }

  span {
    margin: 0;
    padding: 3px;
    margin: 3px;
    font-size: 0.7em;
    border-radius: 5px;
    color: white;
    background-color: #4b4b4b;
    float: right;
  }

  @media (min-width: 640px) {
    button {
      width: 470px;
    }
  }
</style>

<button on:click={handleClick}>
  <div>
    <h3>{name}</h3>
  </div>
  <p>{description}</p>
  <aside>
    {#each tags as tag}
      <span>{tag}</span>
    {/each}
  </aside>
</button>
