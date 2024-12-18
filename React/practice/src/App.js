import './App.css';
import About from './components/About';
import Alert from './components/Alert';
import Navbar from './components/Navbar';
import TextForm from './components/TextForm';
import React, { useState } from 'react';


function App() {
   const [mode, setMode] = useState('light');
   const [alert, setAlert] = useState(null);

   const showAlert = (message, type) => {
      setAlert({
         msg: message,
         type: type
      })

      setTimeout(() => {
         setAlert(null);
      }, 1500);
   }
   const toggleMode = () => {
      if (mode === 'light') {
         setMode('dark')
         document.body.style.backgroundColor = "grey";
         showAlert("Dark Mode Has Been Enabled", "success");
      } else {
         setMode('light')
         document.body.style.backgroundColor = "white";
         showAlert("Light Mode Has Been Enabled", "success");
      }
   }
   return (
      <>
         <Navbar title="TextUtils2" mode={mode} toggleMode={toggleMode} />
         <Alert alert={alert} />
         {/* <Navbar/> */}
         <div className='container'>
            <TextForm showAlert={showAlert} heading="Enter the text to analyze" mode={mode} />
            {/* <About/> */}

         </div>


      </>
   );
}

export default App;
