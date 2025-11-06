import React, { useEffect } from 'react';
import * as THREE from 'three';

function Globe() {
  useEffect(() => {
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
    const renderer = new THREE.WebGLRenderer();
    renderer.setSize(window.innerWidth, window.innerHeight);
    document.getElementById('globe').appendChild(renderer.domElement);

    const globe = new THREE.Mesh(
      new THREE.SphereGeometry(1),
      new THREE.MeshBasicMaterial({ color: 0xFFD700, wireframe: true })
    );
    scene.add(globe);
    camera.position.z = 5;

    function animate() {
      requestAnimationFrame(animate);
      globe.rotation.y += 0.01;  // Swarm migration sim
      renderer.render(scene, camera);
    }
    animate();
  }, []);

  return <div id="globe" style={{ width: '100%', height: '500px' }} />;
}

export default Globe;