package Model.Colore;

import Model.Articolo.Articolo;
import Model.storage.ConPool;
import Model.storage.QueryBuilder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SQLColoreDAO implements ColoreDAO<SQLException> {

    public SQLColoreDAO(){
        super();
    }

    @Override
    public List<Colore> doRetrieveAll() throws SQLException {
        try (Connection con = ConPool.getConnection()){
            PreparedStatement ps = con.prepareStatement("SELECT c.* " +
                    "FROM colore c ORDER BY c.nome_colore;");
            ResultSet rs = ps.executeQuery();
            ColoreExtractor coloreExtractor = new ColoreExtractor();
            List<Colore> colori = new ArrayList<>();
            while (rs.next()){
                colori.add(coloreExtractor.extract(rs));
            }
            return colori;
        }
    }

    @Override
    public Colore doRetrieveById (String hex) throws SQLException{
        try (Connection con = ConPool.getConnection()){
            PreparedStatement ps = con.prepareStatement("SELECT c.*" +
                    "FROM colore c " +
                    "WHERE cod_esadecimale = '" + hex + "';");
            ResultSet rs = ps.executeQuery();
            ColoreExtractor coloreExtractor = new ColoreExtractor();
            Colore colore = new Colore();
            if (rs.next()){
                colore = coloreExtractor.extract(rs);
            }
            return colore;
        }
    }

    @Override
    public List<Colore> doRetrieveBySex(String sex) throws SQLException {
        try (Connection con = ConPool.getConnection()){
            PreparedStatement ps = con.prepareStatement("SELECT DISTINCT c.* " +
                    "FROM colore c INNER JOIN tinta t on c.cod_esadecimale = t.cod_esadecimale " +
                    "INNER JOIN articolo a on t.ID_articolo = a.ID_articolo " +
                    "WHERE a.Sesso = '" + sex + "' " +
                    "ORDER BY c.nome_colore;");
            ResultSet rs = ps.executeQuery();
            ColoreExtractor coloreExtractor = new ColoreExtractor();
            List<Colore> colori = new ArrayList<>();
            while (rs.next()){
                colori.add(coloreExtractor.extract(rs));
            }
            return colori;
        }
    }



    @Override
    public boolean createTinta(Articolo articolo) throws SQLException {
        try (Connection con = ConPool.getConnection()) {
            int rows = 0;
            for (Colore c : articolo.getColori()) {
                try (PreparedStatement ps = con.prepareStatement("INSERT INTO tinta " + "VALUES (?,?)")) {
                    ps.setString(1, c.getCod_esadecimale());
                    ps.setInt(2, articolo.getIDarticolo());
                    rows += ps.executeUpdate();
                }
            }
            return rows == articolo.getColori().size();
        }
    }

    @Override
    public boolean createColore(Colore colore) throws SQLException {
        try(Connection con = ConPool.getConnection()) {
            QueryBuilder queryBuilder = new QueryBuilder("colore", "c");
            queryBuilder.insert("cod_esadecimale", "Nome");
            try (PreparedStatement ps = con.prepareStatement(queryBuilder.generateQuery())) {
                ps.setString(1, colore.getCod_esadecimale());
                ps.setString(2, colore.getNome());
                int rows = ps.executeUpdate();
                return rows == 1;
            }
        }
    }

    @Override
    public boolean updateColore(Colore colore) throws SQLException {
        try(Connection con = ConPool.getConnection()) {
            QueryBuilder queryBuilder = new QueryBuilder("colore", "c");
            queryBuilder.update("cod_esadecimale", "Nome").where("c.cod_esadecimale=?");
            try (PreparedStatement ps = con.prepareStatement(queryBuilder.generateQuery())) {
                ps.setString(1, colore.getCod_esadecimale());
                ps.setString(2, colore.getNome());
                ps.setString(3, colore.getCod_esadecimale());
                int rows = ps.executeUpdate();
                return rows == 1;
            }
        }
    }

    @Override
    public boolean updateTinta(Colore colore, Articolo articolo) throws SQLException{
        try(Connection con = ConPool.getConnection()) {
            QueryBuilder queryBuilder = new QueryBuilder("tinta", "t");
            queryBuilder.update("cod_esadecimale").where("ID_articolo=" + articolo.getIDarticolo());
            try (PreparedStatement ps = con.prepareStatement(queryBuilder.generateQuery())) {
                ps.setString(1, colore.getCod_esadecimale());
                int rows = ps.executeUpdate();
                return rows == 1;
            }
        }
    }


    @Override
    public boolean deleteColore(Colore colore) throws SQLException {
        try(Connection con = ConPool.getConnection()) {
            QueryBuilder queryBuilder = new QueryBuilder("colore", "c");
            queryBuilder.delete().where("c.cod_esadecimale=?");
            try (PreparedStatement ps = con.prepareStatement(queryBuilder.generateQuery())) {
                ps.setString(1, colore.getCod_esadecimale());
                int rows = ps.executeUpdate();
                return rows == 1;
            }
        }
    }
}
