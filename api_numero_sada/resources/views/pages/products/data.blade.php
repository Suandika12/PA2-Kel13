<!DOCTYPE html>
<html>
<head>
<style>
body {
      font-family: Arial, sans-serif;
    }
    
    table {
      width: 100%;
      border-collapse: collapse;
    }
    
    th {
      background-color: #f2f2f2;
      border: 1px solid #ddd;
      padding: 8px;
    }
    
    td {
      border: 1px solid #ddd;
      padding: 8px;
    }

    h3 {
      text-align: center;
    }
</style>
</head>
<body>

<h3>List Dish</h3>

<table>
  <tr>
    <th>Dish</th>
    <th>SKU</th>
    <th>Category</th>
    <th>Qty</th>
    <th>Price</th>
  </tr>
  @foreach($products as $item)
  <tr>
    <td>{{ $item->name }}</td>
    <td>{{ $item->sku }}</td>
    <td>{{ $item->category }}</td>
    <td>{{ $item->quantity }}</td>
    <td>{{ $item->price }}</td>
  </tr>
  @endforeach
</table>

</body>
</html>


