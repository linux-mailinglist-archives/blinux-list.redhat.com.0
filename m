Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0068736F3D2
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 03:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619747272;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=aGAElLz6VTqZ15C9kjkT9TX4x81KOyXldBNfuPOtUkw=;
	b=a9CB5mSx9T7k+lhb0qp0nd4NBer45xNQNGGgiwXGMoskaPhlwyFqiFr2enYzwTDLo63CKj
	lBzLm1TKlOmyFeK//o2RxZV5lDve5zxtbsGZ/WbVT3O7VoTqCpwoSz/8wX+re62OsK3FyB
	o8Zh3hOmN3RnxjwVRIGLt8IKxTYR/NI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-Vdjn5-33PWKYg9mc8Uhtwg-1; Thu, 29 Apr 2021 21:47:50 -0400
X-MC-Unique: Vdjn5-33PWKYg9mc8Uhtwg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B026A818401;
	Fri, 30 Apr 2021 01:47:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18AE970583;
	Fri, 30 Apr 2021 01:47:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C5A91800B8E;
	Fri, 30 Apr 2021 01:47:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13U1lK1H002076 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Apr 2021 21:47:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5A6EC20B4A53; Fri, 30 Apr 2021 01:47:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 558D720B4A2B
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 01:47:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12DFA10115E1
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 01:47:18 +0000 (UTC)
Received: from sonic316-12.consmr.mail.bf2.yahoo.com
	(sonic316-12.consmr.mail.bf2.yahoo.com [74.6.130.122]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-428-R4tto1XqOdmhXnCBbfT1zw-1;
	Thu, 29 Apr 2021 21:47:15 -0400
X-MC-Unique: R4tto1XqOdmhXnCBbfT1zw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1619747235; bh=E3XTAEh2RObVCG5QtDEFa9JdNwG69mA2L0m1M+K5P6f=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=D6MWzQ8FWQYxzAx1zVU3C53pXqITyyKUL2wmbFEO8YsUUGa6ThIgVpPq0tg9u99y6tkhll1XbhN21HXJAqddEBRTBzSZ9ye9M3Rg7cZZQDGRPHyxNy7W/2uGFSfeaKlsTFEWrpOCL0yR0OvvAQqW+q+ThOTjG6AYD+H3J9LnLKrpQpyc6O1AyFQL6fm+O4OJqqJYxJF3N9fsoXiGhGwtCMryPCjPgU6Mq0RdjE0tTMU1NweGlw15DWo0iHh9/Q/rlHgMa/YF1UAb78P1PnOIbGkMjkZgS+VNUbeZjQaholc3xHbnI4u4ktDWlDY0yXTd2f5lmfvm3KeGyrRVHrtOzw==
X-YMail-OSG: iSG_v1YVM1l0YHXDtt8gqfUWkmOHbRt2zMxN6iQluxFN0eucIt.gGeiKIz4g.zo
	4ORiVEsdxaeBp_lYdM8tjyJT7WBkEyvz4dZriXX6hCnSMWYur3NlS5VkzH3CoqBiRRy5fzV0Gz.k
	8onQ6dYNzddLLc5dX8VACvJPXGi5HwkXZp.jIEbSrAUan14CSdLILTV4d3i3GUF72KIZ2Sg0_jaP
	_h11PIxWrP6QkCmLHdfe0RNYX0CYZ4zZZIe0LAfsduGE9plRzqb2RGu2fE_updYzhl_7vg248d5o
	KWKm18nYtb0tGO4.w3QKF4oElW.EWci_wN8XO.SnvuHFShJSrc4os3HXzZjCBh9IA8_PZBytOGwn
	hH4fCqzjogUj4d5llHviWY9TxTb0jz5WMCAwXhXxb1YVaMtYDQcedkGxweYxK.cwDFpjxoF1Knsx
	U5esHY5CxZklS8ahD7ed0pMn2z4hQySfOTTwE1JMJN8M8n_358_cyFiBKSXoveRbzXFb6.iflV_C
	wc4IahU7Fo5mGZSp4Gr0MOvXjuZrXcml9QOtyLJI31PXi2R94p3OrRbOSqiGpEe7thQgl3zXc.pa
	RDdHi3_aOxRH9mZq5A5MnBQnRUrIo9uG_YbchKG6lqDEbJTqBPfpobj3di4pr.7HiVjYiu5EJwL9
	.MNZ7DmH_4.kE2xes2iRJowU46UnDdV5EMsObSy8u3OrsfMNCkVoygBuLvk_iCqpF_FJKmHMoWiw
	aWf3wQ9z347DJNFSUgnoBdQv1_ggKfNv18jy4HDPdV7aNzPBsPl9SUXk_Pk78MJKY6PIhs2hgJD3
	TdJjcI8zi9OngnhFhJiigO8tMpS1DVAJGMxmxb2jNQoM1qufPg0DLG0.ADkNaENAjz6J6V0iImPn
	vp0JiKkGH6cJ0Cfrf4JSou_6MJ9qtjPqD.YRtFJ4.a5CnaGDltP4XgNx5KYt83z7MTZGZoymJ8IV
	2eXpivZYG4tYHwLcy3ftisfpESEChJI9R77QURihIzGvwrP27zJ2GeEpjgzqNfwmWdvPOYLbP1A0
	ccutaD7Bc.crtvQsAwPFGlPFVMGgL5RMKUUDjWAgAgeWkpBjsjhCcA8UdS52_m9pqyrdC.bqZCUS
	nCmTAsjo6ivl4b0oMw47UQlLGeJjMvGQls5boa8pnCMeoQiUHb4Ft49YopnoPsJfeASQgCNSeDzS
	PEgJ3o70uuiftuGHQXA02yfVJTIOh8cMgLpFQo6pTnuhraWvQo5I3I1.t3BX3T17aqoEieKS4Y4R
	jKvawEknm2sjenx._pEvQiZyVDrYs9u9E9TY7FV7expmPNk6_BPoodLDvhXRG5RPbOkLuv.PjWxy
	Kqh7RWalaLptPhGgyU0CsLdIsIdd2VpvAKNfEu8OjWxwOT3z_e_jcpAAKX3Llf.fa1PBHD8N.ybc
	kvjWD_4m0SptlmLdhPgF4PXsPPeJjVKMV5Ok7MyJIIEPL52VcphH1mXBG6eDnaKvnO6UEebZXK_D
	yKtv4HREOH.g0D3yLiAUZgjCC787GiTWgmDGZb6YLXQ7gzvLd5HajjnZkEn0tqitZDeCf4kbcasr
	UrVhWVIAfNdEvUwEpgvbPzbqGZrtw24nig.lKMA5Zd6HQ6Ygk85zIvbdVL2gkQfpKS3Ex_rDCP6a
	mr7Chm2WeVnyrcngOa9QO4wrQLxZFImSVtIHx1PDvGGmZ.huXGzBAdFz1EUPSC3CdSHW0Kdqyooa
	3uKlxpF5RaUlHCR0joQBuwAhLrwVHKdxwYTuhsZWqN57A1biSHrR9E7_J2XScyago3gZGkwPdYWo
	ulZW0MLj9caKPCW6sF6uapvqxwdSq1lXzopE6IouuByzTFNb1dHfFFLgBdhmN4g6Eh7CtfsC5Vid
	QyYljz9L2ft0ccMhoUQp0BgDK5E4Va7NUaQ_h.yXXZfSbfi1w0_F69KqMmf9k7.Wa.QCinS9OAS5
	KcrA1w3p8oDhqVk9wkCggi7k.fWYZv5cJMrU9RQkJ.TczJglk60UYOsl_zPBp8pKIETd2xfKWzDX
	v3PzR5JjEBTWEbAX1pyBVESGjx83RcKyW_W5MkXJ7MNFfhyfr5MrTy63pStP7xteVz.Vb63ZmHlY
	3b5G3Mu2b8pIX117QS4zXCUN.P_s5AkHFZCD_73yM.HYuHwnv.Q6o2oef_YJu2vl7azSDdnibRKq
	HatD5ozS5FGVa2Acdf_pZltwuMqaOy556rx98ryZRx152pE_KpScgu_abnMBV53uSTljSL__1PP1
	XDnpvduGvx3.TxarlPjLMklVGqNSr6exknKveOPrqlqbBTOJB9StC4UjMxDP6_aA9lg3L8RHVH5T
	MxvR12E50hnto0P5mFO_8weyH6ikx7zgOkb2W5gJmS_3oNTk9cKvZ44SQXmAAx5M4aZ6fR_sGOWR
	qWIQeWsZ.AB8E3FvqGxKKNZqAGbWW1tTh1lhW04N4sT3hl6wswU28stw2tAExzDbMRIjCAd0R.1D
	936NC0sm..1J5GP2bcOrntyASYqDH2PaVF24-
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 30 Apr 2021 01:47:15 +0000
Received: by kubenode507.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 287c915d3240ce40e12e60c1cde57ee9; 
	Fri, 30 Apr 2021 01:47:14 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Apr 2021 21:47:12 -0400
Subject: Thinking of getting a computer to install Linux on any suggestions?
Message-Id: <4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13U1lK1H002076
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,
I am thinking of getting a new computer so that I can work with Linux. Any suggestions on what type of computer I should get or screen reader suggestions?
Any help would be greatly appreciated.
Thanks,

Ashley


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

