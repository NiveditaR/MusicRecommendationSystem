package com.myproject.main;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.neighborhood.ThresholdUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.CachingRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.LogLikelihoodSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.TanimotoCoefficientSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.recommender.UserBasedRecommender;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

public class ItemRecommend {

	public static void main(String[] args) {
		try {
			
				long start = System.currentTimeMillis();
			
			DataModel dm = new FileDataModel(new File("C:/Users/Nivedita/Desktop/test_0.csv"));
			
			ItemSimilarity ism = new LogLikelihoodSimilarity(dm);
			//ItemSimilarity ism = new PearsonCorrelationSimilarity(dm);
			//TanimotoCoefficientSimilarity tcm= new TanimotoCoefficientSimilarity(dm);
			GenericItemBasedRecommender rec = new GenericItemBasedRecommender(dm, ism);
			System.out.println("Item based Recommendation:");

			int x=1;
			for (LongPrimitiveIterator items=dm.getItemIDs(); items.hasNext();){
				long itemid=items.nextLong();
				List<RecommendedItem> recommendations= rec.mostSimilarItems(itemid, 5);

				for (RecommendedItem recommendation: recommendations){
					System.out.println(itemid+","+recommendation.getItemID());
					
				}
				x++;
				if(x>3) break;
			}
			System.out.println("Time taken : " + (System.currentTimeMillis() - start));
			
			System.out.println("User based Recommendation:");

			 start = System.currentTimeMillis();
			for (LongPrimitiveIterator users=dm.getUserIDs(); users.hasNext();){
				long userid=users.nextLong();
			UserSimilarity usm= new PearsonCorrelationSimilarity(dm);
			UserNeighborhood uneighbour = new ThresholdUserNeighborhood(0.1, usm,dm);
			
			UserBasedRecommender urec= new GenericUserBasedRecommender(dm, uneighbour, usm);
			List<RecommendedItem> recommendations= urec.recommend(userid, 3);
			dm.getUserIDs();

			for (RecommendedItem recommendation: recommendations){
				System.out.println(userid+","+recommendation.getItemID());
				
			}
			x++;
			if(x>10) break;
		}
			
			System.out.println("Time taken : " + (System.currentTimeMillis() - start));		
		
					
			
		} catch (IOException e) {
			System.out.println("File error");
			e.printStackTrace();
		} catch (TasteException e) {
			System.out.println("Taste Exception");
			e.printStackTrace();
		}
	}
	
	

}
