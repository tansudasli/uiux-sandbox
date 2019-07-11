# uiux-sandbox

- .sketch: Sketch design
- .snproject: Supernova project (imported .sketch file)

- [x] supernova-sandbox/: contains sketch and imported supernova project, also IOS and Android exports.
- [x] sketch-sandbox/: contains skecth apps.

## How To Start 

1. Download sketch.io
2. Download supernova.io
3. Download material.io plugin for sketch

or just watch [Demo App](https://github.com/tansudasli/uiux-sandbox/blob/master/demo-translator-app.mov)


## Design Challanges 

There are 2 specific design challanges for demo-translator-app.

1. UX problem between Event and many Conferences (one-2-many).
   - Solution a: Create an Event screen, then He/She clicks to see Conferences detail, then clicks to listen to translation.
   - Solution b: It is instagram style design. Requires smart filtering with ML classification models, and He/She sees all events and condeferences on the same screen.
        - so overcome complexity w/ smart dynamic filtering
        - use nosql db as db technology
2. Making intuitive design in Translator and Attandee listening screens. 
    - in Attandee screen, There may be many original translations. theroticaly, and many translation challens.
    - in Translator screen, He/She should select original voice, then  select the language of translation.

## Strategy
- in generally using **Supernova** for code generation for IOS and Android is not working as expected. Missing exports, double xml lines etc..**That's totaly waste of time**.  
