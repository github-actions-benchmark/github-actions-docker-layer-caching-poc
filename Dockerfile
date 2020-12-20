FROM node:14
RUN npm i @tensorflow/tfjs
RUN npm i lodash
RUN yarn create react-app my-react-app
RUN cd my-react-app && yarn build
RUN npm install -g @vue/cli && (yes | vue create my-vue-app --default)
RUN cd my-vue-app && yarn build
RUN mkdir -p my-tests && cd my-tests && yarn add playwright
