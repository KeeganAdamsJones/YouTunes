package youtunes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import youtunes.Album;
import youtunes.JdbcManager;
import youtunes.AlbumDao;

/*
Keegan Jones
*/


public class JdbcAlbumDao implements AlbumDao {

	JdbcManager db; 
	
	public JdbcAlbumDao() 
	{
		// constructor
		db = new JdbcManager(); 
	}
	
	
	@Override
	public void add(Album entity) // create
	{
		Connection conn = db.getConn(); 
		Album newAlbum = entity; 
		
		if (conn != null) 
		{
			try 
			{
				Statement s = conn.createStatement(); 
				
				String sql = String.format("INSERT INTO album(title, price, genre, img_url, artist_id) values('%s', %s, '%s', '%s', %s);", 
						newAlbum.getTitle(), newAlbum.getPrice(), newAlbum.getGenre(), newAlbum.getImgUrl(), newAlbum.getArtistId());
				
				System.out.println(sql);
				
				try 
				{
					s.executeUpdate(sql);
				}
				finally { s.close(); }
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we are unable to insert newAlbum: " + newAlbum.toString()); 
				System.out.println(ex.getMessage());
			}
		}
	}

	@Override
	public List<Album> list() 
	{
		Connection conn = db.getConn(); 
		ArrayList<Album> albums = new ArrayList<Album>();
		
		if (conn != null) 
		{
			try 
			{
				Statement s = conn.createStatement();
				
				String sql = "select album_id, title, price, img_url, genre from album";
				
				System.out.println(sql);
				
				try 
				{
					ResultSet rs = s.executeQuery(sql);
					
					try 
					{
						while (rs.next()) 
						{
							Album album = new Album();
							album.setAlbumId(rs.getLong(1));
							album.setTitle(rs.getString(2));
							album.setPrice(rs.getDouble(3));
							album.setImgUrl(rs.getString(4));
							album.setGenre(rs.getString(5));
							albums.add(album);
						}
					}
					finally { rs.close(); }
				}
				finally { s.close(); }
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we could not get albums: " + ex.getMessage()); 
			}
			finally
			{
				db.closeConn(conn);
			}
		}
		
		return albums;
	}

	@Override
	public Album find(Long key) 
	{
		Connection conn = db.getConn(); 
		
		Album album = null; 
		
		if (conn != null) 
		{
			try 
			{
				Statement s = conn.createStatement(); 
				
				String sql = "select album_id, title, price, img_url, genre, artist_id from album where album_id = " + key;
				
				System.out.println(sql);
				
				try 
				{
					ResultSet rs = s.executeQuery(sql);
					
					try 
					{
						if (rs.next()) 
						{
							album = new Album(rs.getLong(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getLong(6)); 
						}
					}
					finally { rs.close(); }
				}
				finally { s.close(); }
				
			}
			catch (SQLException ex)
			{
				System.out.println("Sorry, we could not get album: " + ex.getMessage());
			}
		}
		return album;
	}

	@Override
	public void update(Album entity) {
		Connection conn = db.getConn(); 
		
		Album updatedAlbum = entity; 
		
		if (conn != null) 
		{
			try {
				Statement s = conn.createStatement(); 
				
				String sql = String.format("UPDATE album SET title = '%s', price = %s, genre = '%s', img_url = '%s', artist_id = %s WHERE album_id = %s;", 
						updatedAlbum.getTitle(), updatedAlbum.getPrice(), updatedAlbum.getGenre(), updatedAlbum.getImgUrl(), updatedAlbum.getArtistId(), updatedAlbum.getAlbumId());
				
				System.out.println(sql);
				
				try {
					s.executeUpdate(sql);
				} finally { s.close(); }
			}
			catch (SQLException ex) {
				System.out.println("Sorry we could not update album: " + updatedAlbum.toString());
				System.out.println(ex.getMessage());
			}
		}
	}

	@Override
	public void remove(Long key) {
		Connection conn = db.getConn(); 
		
		if (conn != null) 
		{	
			try 
			{	
				Statement s = conn.createStatement(); 
				
				String sql = String.format("DELETE FROM album WHERE album_id = %s", key);
				
				System.out.println(sql);
				
				try 
				{
					s.executeUpdate(sql);
				} 
				finally { s.close(); }
			} 
			catch (SQLException ex) 
			{
				System.out.println("Sorry we could not delete ablum: " + key);
				System.out.println(ex.getMessage());
			}
		}
	}
}