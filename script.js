var cpanelUrl = ""; 

document.getElementById("moepiButton").addEventListener("click", function() {
    fetchData('Moepi Publishing');
});

document.getElementById("teketeButton").addEventListener("click", function() {
    fetchData('Tekete');
});

document.getElementById("clearButton").addEventListener("click", function() {
    clearForm();
});
document.getElementById("exitButton").addEventListener("click", function() {
    openNewTab();
});

function openNewTab() {
    window.open("index.html", "_blank"); 
}




function fetchData(websiteName) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "fetchWebsiteData.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onload = function() {
        if (xhr.status === 200) {
            var data = JSON.parse(xhr.responseText);
            if (data.error) {
                alert(data.error);
            } else {
                document.getElementById("website_name").value = websiteName;
                document.getElementById("visit_site").value = data.visit_site;
                document.getElementById("username").value = data.username;

                
                cpanelUrl = data.cpanel_url;
                document.getElementById("cpanel_url_button").disabled = false;
            }
        }
    };
    xhr.send("website_name=" + websiteName);
}

function clearForm() {
    document.getElementById("website_name").value = "";
    document.getElementById("visit_site").value = "";
    document.getElementById("username").value = "";
    cpanelUrl = "";
    document.getElementById("cpanel_url_button").disabled = true; 
}

function openCpanel() {
    if (cpanelUrl) {
        window.open(cpanelUrl, '_blank'); 
    }
}



