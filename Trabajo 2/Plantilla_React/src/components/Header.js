import React from "react";
import { FaSearch } from "react-icons/fa";
import './Header.css';

export default ({black}) => {
    return (
        <header className={black ? 'black' : ''}>
        <div className="header--logo">
            <a href="/">
                <img src="http://localhost:3000/img/logo.png"></img>
            </a>
        </div>
        <div className="header--user">
            <a href="/">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"></img>
            </a>
        </div>
        </header>
    );
}