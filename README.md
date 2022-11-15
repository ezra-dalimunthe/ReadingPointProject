# ReadingPointProject

<table >
<thead><tr><th title="Field #1">NAMES</th>
<th title="Field #2">PORTS</th>
<th title="Field #3">NETWORKS</th>
</tr></thead>
<tbody>
<tr>
<td colpan="3">AuthService</td>
</tr>
<tr>
<td>reading-point-member-app-service</td>
<td><ul><li>9000/tcp</li><li>0.0.0.0:8903-&gt;8000/tcp</li><li>:::8903-&gt;8000/tcp</li></ul></td>
<td> reading-point-auth-network,reading-point-member-network</td>
</tr>
<tr>
<td>reading-point-book-app-service</td>
<td>9000/tcp, 0.0.0.0:8902-&gt;8000/tcp, :::8902-&gt;8000/tcp</td>
<td> reading-point-auth-network,reading-point-book-network</td>
</tr>
<tr>
<td>reading-point-auth-app-service</td>
<td>9000/tcp, 0.0.0.0:8901-&gt;8000/tcp, :::8901-&gt;8000/tcp</td>
<td> reading-point-auth-network</td>
</tr>
<tr>
<td>reading-point-borrow-app-service</td>
<td>9000/tcp, 0.0.0.0:8904-&gt;8000/tcp, :::8904-&gt;8000/tcp</td>
<td> reading-point-auth-network,reading-point-book-network,reading-point-borrow-network,reading-point-member-network</td>
</tr>
<tr>
<td>reading-point-borrow-redis-service</td>
<td>6379/tcp</td>
<td> reading-point-borrow-network</td>
</tr>
<tr>
<td>reading-point-borrow-db-service</td>
<td>3306/tcp</td>
<td> reading-point-borrow-network</td>
</tr>
<tr>
<td>reading-point-member-db-service</td>
<td>3306/tcp</td>
<td> reading-point-member-network</td>
</tr>
<tr>
<td>reading-point-member-redis-service</td>
<td>6379/tcp</td>
<td> reading-point-member-network</td>
</tr>
<tr>
<td>reading-point-book-db-service</td>
<td>3306/tcp</td>
<td> reading-point-book-network</td>
</tr>
<tr>
<td>reading-point-book-redis-service</td>
<td>6379/tcp</td>
<td> reading-point-book-network</td>
</tr>
<tr>
<td>reading-point-auth-db-service</td>
<td>3306/tcp</td>
<td> reading-point-auth-network</td>
</tr>
<tr>
<td>reading-point-auth-redis-service</td>
<td>6379/tcp</td>
<td> reading-point-auth-network</td>
</tr>
</tbody></table>
