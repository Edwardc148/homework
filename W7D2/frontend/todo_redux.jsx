import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = (store) => {
  let localDispatch = store.dispatch;
  return ((action) => {
    console.log(store.getState());
    console.log(action);
    localDispatch(action);
    console.log(store.getState());
  });
};

// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middle) => {
//     dispatch = middle(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  // store.dispatch = addLoggingToDispatch(store);
  // store = applyMiddlewares(store, addLoggingToDispatch(store));

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
