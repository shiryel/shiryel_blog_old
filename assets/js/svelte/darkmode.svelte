<script>
  import Darkmode from "darkmode-js";
  export let message = "Are you a programmer? click here ->";

  const darkmode = new Darkmode();
</script>

<style>
  button {
    position: fixed;
    background: none;
    border: none;
    font-size: 1.5rem;
    padding: 0.5em;
    right: 0;
    top: 0;
  }

  p {
    display: none;
  }

  @media (min-width: 1000px) {
    p {
      display: block;
      position: fixed;
      right: 0;
      top: 0;
      padding-top: 1.6em;
      padding-right: 3em;
      z-index: -1;
      transform: rotate(-10deg);
    }
  }
</style>

<button on:click={() => darkmode.toggle()}>🌓</button>
<p>{message}</p>
