<script>
  import showdown from "showdown";
  import showdownHighlight from "showdown-highlight";
  import "highlight.js/styles/agate.css";

  export let post = {};

  const converter = new showdown.Converter({ extensions: [showdownHighlight] });

  let html = "loading...";
  $: fetch(`/post-files/${post.post_id}`)
    .then((response) => _chapter_exists_v(response))
    .then((data) => (html = converter.makeHtml(data)));
  function _chapter_exists_v(res) {
    if (res.ok) {
      return res.text();
    } else {
      return `
      == Ops, this post does not exist! ==
      `;
    }
  }
</script>

<style>
  section {
    display: flex;
    justify-content: center;
  }

  article {
    text-align: left;
    max-width: 950px;
    margin: 0 auto;
    font-size: 1rem;
    border-top: 1px solid black;
    border-bottom: 1px solid black;
  }

  .titulo {
    font-size: 3em;
    text-align: center;
  }

  .description {
    text-align: center;
    padding-bottom: 30px;
    border-bottom: 1px solid black;
  }

  button {
    background-color: #c2c2c2;
    width: 200px;
    margin: 20px;
  }

  @media (min-width: 1000px) {
  }
</style>

<section>
  <button onclick="location.href='/'">Home</button>
</section>
<article>
  <h2 class="titulo">{post.name}</h2>
  <h1 class="description">{post.description}</h1>
  <div>
    {@html html}
  </div>
</article>
<section>
  <button onclick="location.href='/'">Home</button>
</section>
