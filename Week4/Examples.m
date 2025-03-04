array = [1, 2, 1, 2, 3, 4, 5, 8, 9, 5]; %define the numbers in the array!
plot(array); hold on; %plot the array and hold the graph open!
arrayLength = length(array); % find the length of the array!
for i = 1:arrayLength %run the loop 'arrayLength' times.
 array(i) = array(i) + i;
 % replace the existing 'array' values with the array values plus the
 % corresponding index value (IE: 1+1, 2+2, 1+3, 2+4...)
end
plot(array, '--');
