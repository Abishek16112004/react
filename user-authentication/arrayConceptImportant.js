const array1 = [
    {
        monday: true
    },
    {
        tuesday: false
    },
    {
        wednesday: true
    }
];

const obj1 = {
    id: 1,
    name: "eeee",
    monday: false
};
const newarray = [];

array1.forEach((item) => {
    if (item.id === obj1.id) {
        newarray.push({ ...item, ...obj1 });
    } else {
        newarray.push(item);
    }
});

console.log(newarray);









const array1 = [
    {
        monday: true
    },
    {
        tuesday: false
    },
    {
        wednesday: true
    }
];

const obj1 = {
    id: 1,
    name: "eeee",
    monday: false
};

let found = false;

for (let i = 0; i < array1.length; i++) {
    const obj = array1[i];
    
    if (Object.keys(obj).includes('monday')) {
        found = true;
        obj1.monday = obj.monday; // Set obj1's monday property to the existing value
        break;
    }
}

if (!found) {
    array1.push(obj1);
}

console.log(array1);



 


const array1 = [
    {
        monday: true
    },
    {
        tuesday: false
    },
    {
        wednesday: true
    }
];

const obj1 = {
    id: 1,
    name: "eeee",
    monday: false
};

let found = false;
let valueToAdd = null;

for (let i = 0; i < array1.length; i++) {
    const obj = array1[i];
    const keys = Object.keys(obj);

    for (let j = 0; j < keys.length; j++) {
        const key = keys[j];
        
        if (obj1.hasOwnProperty(key)) {
            found = true;
            valueToAdd = obj[key]; // Set valueToAdd to the existing value for the matched key
            break;
        }
    }

    if (found) {
        break;
    }
}

if (!found) {
    // Set valueToAdd to the value of 'monday' in obj1 or any other key you want to match
    valueToAdd = obj1.monday;
}

if (valueToAdd !== null) {
    array1.push(valueToAdd);
}

console.log(array1);






const array1 = [
    {
        monday: true
    },
    {
        tuesday: false
    },
    {
        wednesday: true
    }
];

const obj1 = {
    id: 1,
    name: "eeee",
    monday: false
};

let found = false;

for (let i = 0; i < array1.length; i++) {
    const obj = array1[i];
    const keys = Object.keys(obj);

    for (let j = 0; j < keys.length; j++) {
        const key = keys[j];

        if (obj1.hasOwnProperty(key)) {
            found = true;
            obj[key] = obj1[key]; // Update the existing value to the new value from obj1
        }
    }

    if (found) {
        break;
    }
}

if (!found) {
    array1.push(obj1); // Push obj1 as a new object if the key is not found in any object in array1
}

console.log(array1);






const array1 = [
    {
        monday: true
    },
    {
        tuesday: false
    },
    {
        wednesday: true
    }
];

const obj1 = {
    id: 1,
    name: "eeee",
    monday: false
};

let found = false;

for (let i = 0; i < array1.length; i++) {
    const obj = array1[i];
    const keys = Object.keys(obj);

    for (let j = 0; j < keys.length; j++) {
        const key = keys[j];

        if (obj1.hasOwnProperty(key)) {
            found = true;
            obj[key] = obj1[key]; // Update the existing value to the new value from obj1
        }
    }

    if (found) {
        break;
    }
}

if (!found) {
    array1.push(obj1); // Push obj1 as a new object if the key is not found in any object in array1
}

console.log(array1);
