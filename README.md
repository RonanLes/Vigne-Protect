
# Vigne-Protect

Lors d’une alerte de gel, le groupe électrogène pourra être démarré en automatique (utilisation par défaut) si la température atteint 0°C et si l’hygrométrie est supérieure à 80%. ou -1°C quel que soit l’hygrométrie. Le groupe devra s’arrêter si la température extérieure atteint +1°C. Cependant le viticulteur peut, à l’aide de son smartphone, allumer ou éteindre le groupe (ordre prioritaire).
Plusieurs modules capteurs pourront être disposés dans la vigne. La plupart des modules possède 2 capteurs, 1 pour la mesure de l’hygrométrie et la température au niveau des bourgeons, 1 capteurs de température pour mesurer la température du fil (ces mesures peuvent varier en fonction de l’endroit où sont situés les capteurs dans la vigne). D’autres types de modules capteurs peuvent être ajoutés (vent, puissance, …). Les résultats des mesures ainsi que l’état de leur batterie seront transmis au Raspberry toutes les 3 minutes où elles seront enregistrées et affichées en temps réel. Elles seront transmises toutes les 6 mn au smartphone.
Les températures sont mesurées et transmises au dixième de degré Celsius près.
Les hygrométries sont mesurées et transmises à l’unité près (plage de 0 à 100%).
La vitesse du vent est mesurée et envoyée à l’unité près en km/h (plage de 0 à 120 km/h),
L’identifiant des modules capteurs sera composé de 5 caractères. 
Les capteurs doivent pouvoir être répartis à différents endroits. La portée de transmission doit être d’une centaine de mètres. 
![image](https://user-images.githubusercontent.com/66444146/213673052-19637dc9-69de-454e-b5dc-4fa1d5e63289.png)
![image](https://user-images.githubusercontent.com/66444146/213673610-b0bea812-7e19-4410-9157-2def7fadba72.png)
