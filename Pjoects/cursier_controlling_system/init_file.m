dict_name = 'ACC_DataDictionary';
hDict = Simulink.data.dictionary.open([dict_name,'.sldd']);
hDesignData = hDict.getSection('Global');
childNamesList = hDesignData.evalin('who');
for n = 1:numel(childNamesList)
  hEntry = hDesignData.getEntry(childNamesList{n});
  assignin('base', hEntry.Name, hEntry.getValue);
end