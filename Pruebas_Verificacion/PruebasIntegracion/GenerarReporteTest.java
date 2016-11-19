package PruebasIntegracion;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;

import SegmentacionTemporal.InfoReporte;
import SegmentacionTemporal.SegmentadorTemporal;

public class GenerarReporteTest {

	static InfoReporte pReporte;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
		int cantidadcortes = 302;
		int cantFalsosPositivos = 151;
		int cantpFalsosNegativos = 11;
		pReporte = new InfoReporte(cantFalsosPositivos,cantpFalsosNegativos,cantidadcortes);

	}

	@Test
	public void test() {
		
		SegmentadorTemporal controlador = new SegmentadorTemporal ();
		
		String reporte = controlador.generarReporte(pReporte);
		
		String resultadoesperado = "{\"data\":[{\"CantCortes\":302,\"CantFalsoNegativo\":11,\"CantFalsoPositivo\":151}]}";
		
		assertEquals( resultadoesperado , reporte);
		
	}

}
