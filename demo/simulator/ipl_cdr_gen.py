from kafka import KafkaProducer
import json, time, random

producer = KafkaProducer(bootstrap_servers=['localhost:9092'], value_serializer=lambda v: json.dumps(v).encode('utf-8'))

# Simulate IPL burst
for _ in range(1000):
    cdr = {
        'timestamp': time.time(),
        'ne_id': f'eNB-{random.randint(800, 900)}',
        'volume': random.randint(10000, 50000),  # Surge!
        'event': 'IPL_FINAL'
    }
    producer.send('raw-cdr-ingress', cdr)
    time.sleep(0.01)  # 100/sec burst