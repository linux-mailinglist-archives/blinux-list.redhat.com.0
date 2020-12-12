Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE642D8A1B
	for <lists+blinux-list@lfdr.de>; Sat, 12 Dec 2020 22:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607807365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=0WE+PtSYo/VNyhJBcyg7FIsG28PojTThqeiEfsUQrCk=;
	b=dStVBjKV22jVhZm3Pea/d4irIKZUM8DY3+8/s3PJDPn8Z9NMsuHYb9Aq3Mb4wOSsmbunUS
	eoEWKre5Is4g6pks0p7rm7MZc+k1EQB1hbj7eknrcICFwmSl8Hgm4zdUEtxik4vG7P9/GH
	EQQwkMDsuuUApozv4SAIpPglVRBADR8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-KqhL5rZaP3eecTtRVYKN_A-1; Sat, 12 Dec 2020 16:09:23 -0500
X-MC-Unique: KqhL5rZaP3eecTtRVYKN_A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12AD11842141;
	Sat, 12 Dec 2020 21:09:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96FB963746;
	Sat, 12 Dec 2020 21:09:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 62876180954D;
	Sat, 12 Dec 2020 21:09:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BCL8q2f014861 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 12 Dec 2020 16:08:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 217942166B29; Sat, 12 Dec 2020 21:08:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CD082166B28
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 21:08:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA1A6101A561
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 21:08:49 +0000 (UTC)
Received: from sonic302-3.consmr.mail.bf2.yahoo.com
	(sonic302-3.consmr.mail.bf2.yahoo.com [74.6.135.42]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-264-SQqheYTMPXCQxBuzJt45Gg-1;
	Sat, 12 Dec 2020 16:08:47 -0500
X-MC-Unique: SQqheYTMPXCQxBuzJt45Gg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1607807327; bh=/GgDYT6eJh3DVulrEfKrDcUUOm8nTRKc0O0Y46y1Wsh=;
	h=From:Date:Subject:To:From:Subject;
	b=VQjmlhNUL+vRmeSSlXIxD1lyzt+4xKZJw8cVsc187tJoL4uRbgfF5ilLYYzToCcy0vWVRlIjiFcmZuM3YPx8z/eulYdY50twRjVahJPSTg527bjEJmh4TB7yLDHfwwLqtoU4gPZmxHQbw1EXNH65lw/qeB02P1Juo5XNO5LoPDVvlqRCt5iA+GiT1Ipo28PEarXHpDWVcA+WXhPgrFUjlxrmCXANyJyRA5iByyyai/pIDP1+5Wu++GaNXEuHRLbGAGJDWFUv4Daby9yCL1M3FC6C7E/CP32D0P1knp+nOOYYGspuB5Yj8Ht/AGVips1+aldvXTiSbrBOa6C6ndnftw==
X-YMail-OSG: q3kkvnoVM1mXeJgsNUdMT27R_xo8sHV4.HEhQR_qfs4pfRAFpell3_9YgWxStXs
	rI7xXc0sPcLrq.g.8QVsSpOLaOovfEIoX.Lw5I0ng5IMJBhc10xy7NWZ.qB5NaUmX0fr9gvVUx13
	jJrG493vn1GFGJRuJY14rXztx8Vf1SqUY_CaKuV7o4lZIRTOSXxDjJYBEMACEeATHqttuEsuCBNt
	PGgGSMz4oKRAqjGtpW3K5G3rzLVRBpgSW9VfWqvZN1jDv38ZANadtika58eLyruA6_Pe199pYl4o
	f7c5L6JPTZBz2XyA04bE18tJm4qjsrBXLfYwHX4zCikd4zqXH1D_xMntgMaMG7tKs4cd8mBt.oLm
	maLBeQu_U3KOlptJSHLEZ_JLUydKOv_3FqiyeP_aLu6xeEarI_xm_hxARajk5_gNaSu6oAZSnAn7
	HCTtfDaY_XjmQHeUlIqXozj0pDVxDm.qGuKUe_T6yxNB.TmUS.K2apslNvkYAcpC54gT5jWWRIiV
	46pAA_4PQc7rjUm0LOYzQJceg6Lt3vC8vKG9TcdN_dVYbna7hHlcJg6zbSpqtwMV.phBN1YdY9be
	3R5aV7FG1tfAbZMtdBS9oPoO51FJ582GPTdqtc9mx20C6.0qsgeOdlQjQI7imqrWBBB8m5xm623Z
	A20lmWsBTreUb5gZSxxzQqK4MLhTrUrvQXUJeCUtn38LtlkpgOz45JmySIqXA3Ygb6iRWtfe.tP3
	GofMGpiWcantUx1432o3T3y.UC7d1CiAs5EvoFUNwt1yZg7sjthCMbamxwNlNppN0IOes4b_adYr
	e581_iocQ_AMHI1cRJI8jW30n6sJE.ZPCUiZcNHthHgb61hE0i9h3o.dUP2LbIPzM.0iAOPb46pq
	oAFkjOOF.fLshNB4cg4M6g38u89wAVVPLAfFhnN__SKJvX8oXDI2wFJSkXmiqq1_Gm_vpz5bf1VM
	LFZnXABRp8YhBQJ886TmqCvlOg9C6xa0MkEsoATCfmLnQ8M3V72mWNx8sErJ55xyEArlZxMjD2cb
	NW5tEMVH068ADt1PL8zJ6TxNuPxV7U_tgdKWevLnRPYaxeJ7x9IbbM8KSYUQGbzvErIkiaVyFbyO
	16aIR3UKKInB0ang4ZcLB92vLWzrJKHhhZknNp1W0lQnvMhWUyyv6L7nXsgyTUQ5Edz8u1DknQDb
	fkE.wgbmHl9F3jejI.mSJxwePzVrVHiq2wbfGt640zRWyb1WQMCwRQi9cm6_J3a7yQIOLhxu7Cal
	ZO0eQrh8.aqAQt9PjrQlHU9FYgX7Ml3jN4rlLLMgVqxg_2D24bJhPmS4njpMctUyTTc323YW2jJv
	v96etoY1Z1DlZxpVVyznGlpZlhjcncpAVsyoyU8CnzC981gx7bxhFqNf6GcXS1SQb_rSJ7cBhkw1
	hIv4jCZVU6nRzjPEpehKSrp3s5tu1O7z66avZ4euLa1vIxWzPUz5sG4htTDPoUxsRfTKKApbsOis
	ePOg.6G6gMsKaiidlrzMLjlQc5n2agen7Sw8Fsb_Uq5autHqn0._CMUiilUVyrHXUC0RZ7Mvmv9O
	2ljuBHx2XkAb88WhVr9adCREWNzRq9Ysul9uQYfasJhAC5bZjl81LX26c2z0iPa52rW1Jwnd_40b
	PMn0NJ4rviv39d7Q75wr3LA5cG6YKgCN2PEMGIMgCLvqnM1I.ML_MHHIKdL40okSA70YxvSzFdRA
	F7vz82kTaNx2hWvngYVHIpFiyJSI3QNDfi91Bn.BKPyGSpl9MBp_c6tjBkaSlidtptY29JYqF9Ii
	ERZR28ofML9_PpL20JwNHZpXwU9XS0iXv_jGEDp6M2wa2zammAy4fZbPpAWiFoGuY0UhjLN_fP8I
	S5.ITqYC5USSmHKNdLTcrSI5pYszF35rz4T0JmPHU17m2u21ypq8BGizZGAauwuIKGkELAS8i4Vo
	hY.OxBigvRkb8_Zut.z_mNCLXinYMWgtyM3OsZg9vmfdiKsbQ7gwcxHG6cklXuq3j3AfQFPrxBDl
	7gPr6bPih6aDrQrfMJSotqkqthl7lELTtf.M6xI0JGDT45j0QmJBk0nerXtNJQMQvlp2ty3N2ON7
	82BRppbbZiS_HjkqcKHlcrW6gVx5ERAYRP7LMiVwTbQbXr7aHOs5h0kN79fS42MVC3U_4E_8kiha
	izynTXsd8jM.XBE1g4rwZERu42swH.6ARxBmO6mf.PtJNBN.mw2l5v77eapBxkAzDqyc1KdyoEtG
	Jjchr24NkGUrgW71CkWPigbSFV5LR9OV_KiEpKFDvz5rbY2J14LzRG1zr3w7EQXkDlzjP26WMnhD
	fo2D1PD0J5dAV8xuMvlo.fBq92kxlo6NDv_kKYrViOina99Ffiz8GPF53tRAN.zt0l53o.EFs9Im
	TSymWsAaYv4voo7CSUeohg4OSPj9UUaxiw8Zib.Su9fVYBXmaMCYf3F1nKmtJAXq39Lc-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 12 Dec 2020 21:08:47 +0000
Received: by smtp405.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 1bdbe378175b141caa366e0c3340c2e8; 
	Sat, 12 Dec 2020 21:08:42 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Sat, 12 Dec 2020 15:08:40 -0600
Subject: Does anyone on here know anything about BRLTTY?
Message-Id: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160.ref@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BCL8q2f014861
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,
Does anyone know how to configure this program to work with a humanware brailliant B 80? I am trying to hook this up for one of my college classes. I am using JAWS as my screen reader.
Any help would be greatly appreciated.
Thanks,



Ashley Breger


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

