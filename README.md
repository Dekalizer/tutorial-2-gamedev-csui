Latihan: Playtest
1. Apa saja pesan log yang dicetak pada panel Output?
- Saat memulai game, tercetak pesan "Platform initialized". Terdapat juga pesan "Reached objective!" ketika pesawat melewati area bagian kiri atas layar.

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
- Tercetak lagi pesan "Reached objective!" menandakan bahwa area di bagian kiri atas layar merupakan area objective yang harus diraih player, dan akan selalu mencetak pesan tersebut.

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
- Ya, Area2D yang bernama ObjectiveArea mempunyai hubungan dengan pesan yang tercetak. Jika dilihat lebih teliti, maka dapat dilihat bahwa ObjectiveArea memiliki link terhadap suatu script yang akan diaktifkan ketika sesuatu memasuki area tersebut (menggunakan metode body_entered()). Ketika dilihat kedalam script yang digunakan, dapat dilihat bahwa pada metode _on_ObjectiveArea_body_entered(), jika suatu object yang bernama "BlueShip" menyentuhnya, maka akan mencetak pesan "Reached objective!".

Latihan: Memanipulasi Node dan Scene
1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
- Fungsi dari node bertipe sprite yaitu untuk memberi grafis pada suatu object. Dalam hal ini, grafis yang diberikan adalah dari folder assets -> "playerShip1_blue.png" dan "stone.png".

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
- Perbedaannya ada pada sifatnya. RigidBody2D memiliki sifat fisika yang realistis seperti gravitasi, collision, dan movement. Dimana StaticBody2D adalah suatu fisik yang akan selalu diam (stationary) dan tidak dipengaruhi oleh sifat fisika seperti gravitasi, collision, dan movement. StaticBody2D biasanya digunakan untuk terrain seperti dinding, lantai, dan objek lainnya yang bersifat statis. Sedangkan RigidBody2D biasanya digunakan untuk player ataupun objek yang bisa merasakan collision ataupun gravitasi (bersifat tidak statis).

3. Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- Tidak ada yang berubah. Awalnya saya berekspektasi bahwa pesawat akan turun lebih cepat karena mempunyai weight dan mass yang tinggi, namun saat saya lihat lagi, yang dapat memengaruhi kecepatan turun (gravitasi) adalah dengan mengubah nilai atribut Gravity Scale, bukan Mass dan Weight.

4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- Pesan cetakan "Reached objective!" tidak lagi ditampilkan di output. Hal ini karena ObjectiveArea telah di-disable.

5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
- Atribut position akan mengubah letak BlueShip pada level, Rotation akan mengubah rotasi hadapan BlueShip, dan Scale akan mengubah skala BlueShip menjadi melebar (pada sumbu X) atau meninggi (pada sumbu Y).

6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
- Karena StonePlatform dan StonePlatform2 merupakan child node dari PlatformBlue, yang mengakibatkan posisi dari StonePlatform dan StonePlatform2 mengikuti/relatif dari posisi PlatformBlue.