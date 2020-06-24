// This code will look in the assets/js/svelte/ and in the sub-directorys for
// .svelte files, the result of this files will be mounted on the element
// "svelte-file_name" who have props from the phoenix render(name, props)

// directory, useSubdirectories, regex
const context = require.context("./svelte", true, /\.svelte$/);

window.onload = function () {
  context.keys().forEach(file_path => {
    // name that will be requeride by svelte(name, prop_list)
    const file_name = file_path.replace(/\.\/|\.svelte$/g, "");

    // COMPONENT
    const component_name = `__svelte__-${file_name}`;
    const component_containers = document.getElementsByClassName(component_name);

    // MOUNT ON
    const App = require(`./svelte/${file_name}`);

    for(var component of component_containers) {
      const props = JSON.parse(component.dataset.props);
      new App.default({
        target: component,
        props: props
      });
    }
  });
};
