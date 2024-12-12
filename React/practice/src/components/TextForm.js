import React, { useState } from 'react'

export default function TextForm(props) {
    const handleUpperCase = () => {
        let newText = text.toUpperCase();
        // console.log("Uppercase was clicked!"+text);
        setText(newText);
        props.showAlert("Converted to Upper case", 'success');
    }
    const handleLowerCase = () => {
        let newText = text.toLowerCase();
        setText(newText);
        props.showAlert("Converted to Lower case", 'success');
    }
    const clearText = () => {
        setText("");
        props.showAlert("Text cleared", "success");
    }
    const colorRed = (event) => {
        setColor(event.target.value);
    }

    const handleOnChange = (event) => {
        // console.log("onChanged");
        setText(event.target.value);
    }
    const [text, setText] = useState("");
    const [color, setColor] = useState("green");

    return (
        <>
            <div style={{ color: props.mode === 'dark' ? 'white' : 'black' }}>
                <div className="container">
                    <div className="mb-3">
                        <div>
                            <h1>{props.heading}</h1>
                            <textarea className="form-control" id="text" style={{ backgroundColor: props.mode === 'dark' ? 'grey' : 'white', color: props.mode === 'dark' ? 'white' : 'black' }} value={text} onChange={handleOnChange} id="" rows="8"></textarea>
                        </div>
                        <button className="btn btn-primary my-2" onClick={handleUpperCase}> Convert to Uppercase </button>
                        <button className="btn btn-primary mx-1 my-2" onClick={handleLowerCase}> Convert to Lowercase </button>
                        <button className="btn btn-primary mx-1 my-2" onClick={clearText}> Clear </button>
                        <input className="btn btn-danger mx-2 my-2" type="button" value="Red" onClick={colorRed} />
                    </div>
                </div>
                <div className="container my-3">
                    <h1>Your text summary</h1>
                    <p>{text.split(" ").length} words and {text.length} characters</p>
                    <p>{0.008 * text.split(" ").length} minutes to read</p>
                    <h2> Preview </h2>
                    <p>{text.length > 0 ? text : "Enter text  to preview"}</p>
                </div>
            </div>

        </>

    )
}
