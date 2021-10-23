import Todo from './Todo.js';

const {render,screen} = require('@testing-library/react');

test('renders todo', ()=>{
  render(<Todo todo={{text: "hello from test", done: false}}/>)
    expect(screen.getByText('hello from test')).toBeInTheDocument()
})

