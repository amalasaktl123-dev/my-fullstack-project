import React from "react";
import {
  FaPlus,
  FaEdit,
  FaTrash,
  FaEye
} from "react-icons/fa";
import { useNavigate } from "react-router-dom";
function Dashboard() {
const navigate = useNavigate();
  const handleInsertClick = () => {
    console.log("Insert button was pressed!");
     navigate("/insertion");  
     alert("Insert method triggered");
  };
  return (
  
   <div
      style={{
        backgroundColor: "#e47c7cff", // ✅ blue color code
        minHeight: "100vh",
        color: "white",
        padding: "20px",
      }}
    >
       {/* Top Action Bar */}
      <div
        style={{
          display: "flex",
          gap: "20px",
          marginBottom: "20px",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <FaPlus size={45} title="Insert" onClick={handleInsertClick} 
          style={{ cursor: "pointer" }} />
        <FaEdit size={45} title="Edit" />
        <FaTrash size={45} title="Delete" />
        <FaEye size={45} title="View" />
      </div>
      <h1>Dashboard</h1>
    
<p style={{ textAlign: 'center', color: 'white', fontWeight: 'bold' }}>
  Login successful. Welcome to your dashboard!
</p>
    </div>
  );
}

export default Dashboard;
