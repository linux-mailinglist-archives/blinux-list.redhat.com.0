Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 354493632AD
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 01:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618703226;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=spcAA+N1S0/3LTODSj1hlHnwr8zSAswJn1St0DJ/Kt0=;
	b=IrIGJK5rVpeRkIorN7zPsaKBnRDUgphrOrXiSd3G9lDk1nUQuBP49OCfPiKglMXOwP6YCt
	3907lXdB4h7HEJw9TDA3BzmNA9uCBGHZuxdiva8mQw5WlQhhycXMw7ve5NuD5YiQiYNVXD
	9Yt0cZJYtryiTy2K508Xu17BH9tjQa8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-m0atbrPvPNGkr8NgOBkdiA-1; Sat, 17 Apr 2021 19:47:03 -0400
X-MC-Unique: m0atbrPvPNGkr8NgOBkdiA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79B151006706;
	Sat, 17 Apr 2021 23:46:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AA1B608DB;
	Sat, 17 Apr 2021 23:46:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF6821806D15;
	Sat, 17 Apr 2021 23:46:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HNkqHh000536 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 19:46:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B57D42182DCF; Sat, 17 Apr 2021 23:46:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFCBB2182DC4
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 23:46:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 077AA805C1D
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 23:46:50 +0000 (UTC)
Received: from sonic306-22.consmr.mail.ne1.yahoo.com
	(sonic306-22.consmr.mail.ne1.yahoo.com [66.163.189.84]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-569-eWYIph6iP9WB0sk0sluSbA-1;
	Sat, 17 Apr 2021 19:46:47 -0400
X-MC-Unique: eWYIph6iP9WB0sk0sluSbA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1618703206; bh=o/akBmm4GX8wm4j31U/Me4xJ+HuTwepJctnutPiGYE+=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=N1e6n0AT0Xxa6QGnlE2aswe2iv48uwQ1EuUoIbz44kVMy9BwJFCIstU1KRivlhdxw8LZthOgnOap9IUXMWphmtc0Za7MR+MRegJs1799AHiRFB2zwdFtZHfbO/SQyDwXKfseurawIN/3Vkr0sANHlWAAH0npSQ42sNi3MoPVJe/z6REFCQmYiwmawyekkAlx3HzYIiaZPPHF/rgVToqbf0IoZydK/Z0WJRb+PQEcko2LpvJWs+m5cQczRnr6WY1kY4fsZ0xCrILXpbHyKgBXP1zek/rCc5mdtSNg8ZOwWIgqVsiT9DGrxLdV+Ob4JoHW2rYCage2i8B2c1HbHfZDJQ==
X-YMail-OSG: dXHNJxIVM1n8JH.Xl2Irj5JnS3WTUZPN.dAPOiVXDentwCA.BIaPjigIKgiElqY
	GSgcRZ7eqD_YTjKAn1zO2endkGuA19.zOJllV6GIhJ_zO6AlM00hqiOiShMToGe3CAg22ilJ05N5
	mrBlDZPQKLvBptwiHbni2Cm5AODTW3UPjXgT3dtsPByq4lze90Qda25wBLamUftGpFx8LB4xxOZm
	wqA4gcSrya7SEtFNZ8M.eQRI_uxnWsI4Lc7tmIRZH2ScqFTgGz1XvlWtMcGUs5WH2Ti9.6FMTNz4
	YCMMp304rjOWePfORljg2Bgtip9bxsM8k4SJo.JX0Bn93Z0i7dzL77qBr8GphNBfyqcK6Nue4KAz
	qSFum92MUSDSfuCsm4fpCiyOVHVMS0Sbk7.gyQYDPs1haDTwHubuCw1LaRtVlTpisDwZAbVVxD7W
	bJwxtsZnR3Kt0Fej7bCl17LDItDfxoA6eApOCswXn.aOy7mOPPq.W7Vat86YyLO1xd8KN83zzbMG
	tt1xjWuHzFWNaTsR6XkcVmRc9yaKb3J6_nGQit8IF7sSZimeQrs85KCxSDEMH201_FVePJRTVfdT
	W2v1IYiMFll9uqoGL5Ygu_jwI4GtlLsWh9Ey3XaUTAy7XYOgKJXyuBqbVrEiMbnveYM96v4miki1
	TLxvN3kl6hAAwqNrsFLR2ER4zUpQ0bWvWfsE6uT8uGmRxY.6noqTaOPYo6VrbmquiExuPhnY5Gnr
	8l2QRlXzewPIg8tAPg_akixJiLL.k8ccA8FRML.bUcm5c_DCSJXJw915ZSd5bW7C9iYfW4Y3mYl6
	z130OyGGj6DBObhOG8z.QxghqU9v.HkUMH1ZpHOLumM9z5aD.p7xEetA9HvRLHXiSvBatH5AtMvt
	CTA0vWtcOFpB68BTqw3Zcv7RBIY.YDyB_17hU398ozt0iSrd1CX3vU0N2O2DGC7AXUb3Cl6CZJ6K
	N2GeS3TSZwMKdohxB3skNidTCMxBCNyxj4NH9f97wTsEMVKfoSzlZxE5RLaSHxct8c4hPCXhNMhM
	AScqqgwOv55m7cF7Wg_jzRwhtRXi7mca3lzmr2rYAqRFZpssd0batTA38lQepBI0qngCA19r9HE6
	6t_PN9QBiHzo26SIb4vXIsl9pYSacEntIINv.SBQ.rf6KPne6KpDiSGbNOg80M3d38530QWDtNM.
	MZSPcTJEOxZLH3.RgMxQ6aqU.iIU1zHLrhwXUsxdKyNoIWBtDMZ4PArMSCKREIO4grzFJk4SkwAX
	AiGZvO0Gi0Fv8s_dYZGc_oSMSp1HnLtJXOZoG3v61ZS0QRbcniiikQjBpAe2WG8ELNYAONMyw0mJ
	SzgbsOp6SDBuOEVnJ2hTYMigQwkMt7brydm8v0ifu8SYCcMGAPG0Iw1wNK0yT45kVsjmMRgZ4Tfa
	k1Q9GbJs8wKpIwyY32CNlCfnwMIczNhiBCHf.qN7S98u_tII.mpY5K3_mntcQAg1HS.QxmN7O3qu
	WxjBTRqC7FMd07lsE4p85R.8snvDm1cgEpR4Ju0hdt2qSvXOfcVSf77xkrAv2O2vv5ApRGeTeRQb
	b.orRrkJ_5hWuxqZAbd7h6gpPmySgODizv_OBtZBRUZA1hsqjhl4uQjxQ0AIt5Mb_K8rRh29cVGu
	njPv8k_PGj2bFtyit_gzMjBGsKwDQ5BwJkNVjDuS868D92NQDBIrXBnmrj8DaIWC_tmhbELquVBW
	3e339eDa6ht9KOBKQybBWN1xiwnJ7E7udIoUB0SFe4rcgZja5JtA7Vbmb1HfX4GdJyC.5BgRGxxf
	X79ZbtzdcVtNESxfsJzpIhj_1X6QbstC6eikOuvU5udJaDkCyurpG8y24nZ.v6qAKGWBaSpjocKc
	wm.Hik6aBCFwilwoBrgUCrpslDjjmWsIeTz6uT_lVP4LvkcysM6nLsQnwG7yDIvY1T5qwHEsneeX
	vSH8cWqTgo2jKKzcKqEcn8pKI0xfIZJ04Bj8aEEYd3nhMffZrd96pYe5aZu9k_D4RJkLhQl4XDDX
	QTI2CZh8SVJLi2x9qSOCTS.8WNJS65GunS3k9manVjDwcbCVj6azwsPQ6vF030FJC.yhuqUJmgiU
	aiy7HJknIlqXcF8qxfz67XbeaiNYZCAb8wUS2k6kbLyTwHqB5YYrrV5.aW.m5JOsyUZceQoKaC9R
	G2NnEH0lpFaRFv1COQLHYaU6ssZui9Gk57Wnk7z5OHOGNazLzNxcAfXMg2J.PBXZ9DE8_J.vAWfT
	l6vVr6l7kkWywp2yITC5U_9K_mEBs0L13G.qh04_lFcmgbcnNwCYJ20JZGN_qBjYaO76LAI2.lMz
	CWdm1012PnKx0dK6jgwFKXxjQ0Jbb4IQ-
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.ne1.yahoo.com with HTTP;
	Sat, 17 Apr 2021 23:46:46 +0000
Received: by kubenode502.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID dddd79751c61d1a289384e1528b3197d; 
	Sat, 17 Apr 2021 23:46:42 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Sat, 17 Apr 2021 19:46:36 -0400
Subject: Voices
Message-Id: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA@yahoo.com>
To: blinux-list@redhat.com
References: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93IGNhbiBJIGFkZCBhZGRpdGlvbmFsIHZvaWNlcyB0byBvcmNhIG9uIHVidW50dSBtYXRlPwoK
CuKAnCBOZXZlciBiZW5kIHlvdXIgaGVhZC4gQWx3YXlzIGhvbGQgaXQgaGlnaC4gTG9vayB0aGUg
d29ybGQgc3RyYWlnaHQgaW4gdGhlIGV5ZS7igJ0gCn4gSGVsZW4gS2VsbGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

