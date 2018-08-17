%Error
function errorCode = addError(code,p)
    cant = length(code)*p;
    cant = round(cant);
    indices = randi(length(code),1,cant);
    for i = indices
        code(i) = not(code(i));
    end
    errorCode = code;
end