# Chile-Networks-Workshop

Ecological Networks Lab.Rmd is the main code containing the worksheet for the practical lab.

Within this worksheet, you will need to load the data from several spreadsheets which include: "SpeciesCharacteristics.csv" (containing species characteristics for all 107 species in the Chilean web) and "exnet.csv" (containing a 15x15 example network to manipulate when learning about network properties). The Chilean network itself is already contained within the NextR package and can be loaded by running the line: data("chilean_intertidal").

The script, "network_plotting.R" was written by Daniel Valencia and is a wonderful way to visualize your network from a matrix. You can also integrate species characteristics data to color nodes based on trophic level, etc.

"Intro networks.pptx" is a powerpoint presentation to introduce students to basic structural network properties and an exercise on how to convert between graphical and matrix forms of a network.

"NextR package SM.pdf" is a pdf of supplemental documentation for the NextR package. More information can also be found online or in the methods paper that introduces the NextR package. Since it is a published R package, there is lots of existing information on how it can be used.

The zip file "Supplemental labs (Matlab).zip" contains a completely new set of labs written by Kayla Hale. They are not associated with the Ecological Networks Lab in R and can be explored in students' own time. They are a group of 3 labs written in Matlab introducing students to more ideas involving small toy networks and also network dynamics.

------------------------------

Cluster key from Kefi et al. (2016)

14 multiplex clusters were identified which differ from each other in the types of links they are involved in, the pattern of incoming and outgoing links, and the identity of species they interacted with. When the identity of the species interacted with was ignored, the 14 clusters were grouped into 5 "groups of clusters" which are called multiplex functional groups. Those multiplex functional groups can broadly be characterized as...

(1) A group of mobile consumers (clusters 1, 4, 7, 9, 14), mostly carnivores, composed of crabs, sea snails, chitons, starfishes, and birds, most of which consume prey species and often find themselves in competition with others.

(2) A small group of sessile, inedible consumers (anemones; clusters 2 and 8) that eat dead or detached animals or their fragments are the source and target of many competitive links with other sessile species and are key players in the resilience of the community. Their classification into a separate group likely reflects their peculiar life habits (sessile scavengers).

(3) An overall hub of sessile, edible consumers that also facilitate others and are key in the resilience of the community (cluster 5). This group contains two common mussel species that differentiate themselves from the other groups by their involvement in all interaction types and particularly in positive interactions (both incoming and outgoing; Figs 2, S4 and S5), supporting many ecological studies that highlight their role as foundational or engineering species [4,37,38]. They indeed provide habitat and substrate for many other invertebrate species seeking shelter.

(4) A group of sessile primary producers (algae; clusters 3, 11, 12) that compete for space and usually find themselves in competitive loops while being frequently consumed.

(5) Finally, a group of sessile species (clusters 6, 10, 13) that is a mix of algae and barnacles that compete for space with other sessile species while facilitating mobile consumers by creating biotic structure that provides refuges and habitat for other species (for instance, the kelp Lessonia nigrescens facilitates recruitment and provides critical shelter or habitat to diverse species).

![](images/Screen%20Shot%202022-12-30%20at%202.57.06%20PM.png)

![](images/Screen%20Shot%202022-12-30%20at%202.59.01%20PM.png)

For more information, see Kéfi S, Miele V, Wieters EA, Navarrete SA, Berlow EL (2016) How Structured Is the Entangled Bank? The Surprisingly Simple Organization of Multiplex Ecological Networks Leads to Increased Persistence and Resilience. PLoS Biol 14(8): e1002527. <https://doi.org/10.1371/journal.pbio.1002527>
