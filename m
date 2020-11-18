Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0AD932B8363
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605721953;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7EePpKkKwiLPtJmzP3yNJQWdIqjLLNEvYB8w3N0S0x4=;
	b=NJIZHluhBaQicptQFTBNGR78uzdshAuK/DPoLejf9VntoAsDaPEXr8aPpSyqt1olQ0Iqpx
	IP/NMDQHDVuXiASl1SePHsD3CN8QYgIdABz8IosdOwqMz7KKM1+kj+uDUGNk98vUbC31tr
	6xQJr8vhurUstdIkQ+4TJ+h2P9s+iws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-LK7NZgfCNbiWHNU-ktATVQ-1; Wed, 18 Nov 2020 12:52:24 -0500
X-MC-Unique: LK7NZgfCNbiWHNU-ktATVQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4978C84F227;
	Wed, 18 Nov 2020 17:52:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 971261964D;
	Wed, 18 Nov 2020 17:52:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3B11018095C9;
	Wed, 18 Nov 2020 17:52:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIHqDdj006081 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:52:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1C28C94629; Wed, 18 Nov 2020 17:52:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14FBB946C2
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:52:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B875F858F11
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:52:10 +0000 (UTC)
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
	(sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-75-s2Lbuu4lOEC_5HrsyR9l9w-1;
	Wed, 18 Nov 2020 12:52:07 -0500
X-MC-Unique: s2Lbuu4lOEC_5HrsyR9l9w-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1605721927; bh=z4hCtWx60qRXMnvYHuzPX4ZnMrAIJNNnI0KLuAWzPDM=;
	h=Date:From:To:Subject:From:Subject;
	b=Vcya9+W4nQDxD8wr3+/ZBk4x1o3Qxd6DC8GYiDPDeaIXHTvrFtuewYtPd2n1kDknbJcBqhiwAHQyyYPUjlqtaXQWSvhVogAwprPcuS6fyQ5Wp/MTSoX+L8huyY/0zaCy1ZUQjfcuyNk3lJMWK8jH93zNGl0PB4lyhv9VEyVBVqRa4S65ccJlrx4QDPu8PugWdP9mBVdgH13BZHVTeUSVD7kiOGOpa3LBkZI1FG+aYvOOBjEavn6vptdNtrBlqWX3AUkHnMmcLuxd4DM5XdFVLmKjaWaeZgM9IEERfpq/z8y2Jcvp2x8g/+lLUF5lvQc6vBVljoIs+pxKDXYza7V9qQ==
X-YMail-OSG: 4KOU6SIVM1mSM7o3SKXhRLxSciZqW0tLVCeMDunnZIqpJv5WdCoclUTNROtxoMg
	estJA0S49yLBNdlpjNb1rai2pUw4QYpk4CZxNIQCqf5ssx5Ci9xRhBn1Cm_GL4JQApF38rek_EI8
	n.jExFy851Kiu0Pa3jQ9EFMEMt18cb6bJoGiLs1__nhpLzgJZRy1SKE95TLecv31D8H1LIMt_CI_
	GvWPhLicuJ2ALzLOR_imIJHG0iXgfrtaYug70iApxv8B4ZGrjaoB_ndvEqOObic.hq85bJqpjS8u
	Z3zxCa7hqNtQ7m_Mm0nrNy3xDDkQ9735NMpDCI0oqub3sUQxVyLupcJpIlRT8HSet.H0QBH8hYdq
	pncE.4FESzdTFVOdK.I8ReYaEv_35FClvCyw1HTAMOmDgI7B1aOinmqLpUVJVg2jA65TbzmfCIts
	Eqgpgt4PwtsFA8c7a1D2ZU820Htru9.wWmLh1G4dmZ4YWKH7au5Pj.xnzuVDqkEx4wqoemH2jSj6
	b_0u006lZYciguvLW5NxsqOLCejm5B7_rxBF3g57iro7__FQcg36yYDryj_DA4uXbQNCHdYYP3ft
	_Exud0ACY_xNBGnsAFQDf1NzODwwBKtIAMVZVQwqQbnxatZro05UWAkDtu569Bz__oP9eRSPSXuo
	S1vRXKlJOFAO1F4FBdY.YYEHDm5.KTQg4LdnkCfc4aM9sGNGXLCLIEvRsv6dWaQzMiwuSToqkQCi
	bkOlq0C_dx7KvSgn_Ur1IE_qZzPaMLf9.U0Nto2kjrCOvmUabPpemlSfUy0HOhdS1WRJ2tvuM.kj
	G2y1IvvjQqzP_5G.hv_1ek6835lflTYPaVZsnnpTjQFF.s_iYJ76jUIlzz_f6ur4TItbV.1iNAiv
	NT.CBym7I.wiAUpWnA.VBkL2WYA.6RIrj2IUy3Sg_FzFbqedDkfQYOBJaizg23FZdLTZCA77xGXI
	DdKJQsdt1QwgfQm1VBx.DtfS0hxQZsziMFyqpK71iXImQSyNY8LIEN7KHqWSDgv9UJvGOXHI3Mba
	Aoyw_xjX_z5uWtKUJhQZWd4HY6CXJ2sejQMbi21oIAfWCu8ejxrzWGI6JQvF7LIVE1nSeubNmj7J
	0JDa7yurvlgAxMnSEIstMIfOm92TZt6LUI3YNQe.ouRdNRcLRwVw3ozdCek2pAt42nnqy.MWWz58
	8SR0v.03GjLSqR3P.Z_nES2m4qYrMoszmsCbeZgzlya83EYSwGIBNo573d9hu1pqXeOq_i2rY3jb
	zM0mE.5k6KzJtM9sJSEtzm8D8n3khcfE54skJ3yVVG7KcDubfYumOPBSqSdlkVnnNUUGCRcl7mGo
	.wjrfwUl7wKefSVNFcfDuDW_kMG0obx0q7G83_kVNGHcjY56T5D2wliX1jSG18ckwMajUXezalSK
	nooYgI2GO14Kie1uwL0T6F3tloLXDCGzqr7YwIhzGEeuEVhysRNBnoXYyCS4ZqAim6ddf4rA7Hic
	TKT_u6GHAzBxisSW_QRJHP2TZRE6EDWd8pM7LjF2lkKk3WhiCdFng6hk0rmEzvVVAyRMeM6ctx6u
	S5eJUmlgiqUc5aWD.QeKF5Rl_fAVB8F4t4xMuxJDg9jxtSAva50RvWmGgt_ZH4pNrCEXWtEnJO7s
	PReggXRt.bhI3VuSMBfgvjAKoh2dBd9DgQTfFCLrueQ_gDRsCMTokN9G8HfXwUIxt6P__AMFFVJx
	t86pWZvd7eWR3hQ74bR3_KxlA_h8l7GP_S6rDYwnkJhhu.6nJY4U.Sxn4tQ3MvA7CXc2T8CfjqI.
	6S_v2LfRdY3gRENyRimvxjQwnBfwMAaBXJoqq0Ze7iLxb0ahMdVH0AZN0_A5JKjJvo9ckthIbWwy
	szaqWTcnGolDHvlv12Cukd1tkotYVCGxZncbMnGiguyFRO5bZmkqmtgpnGvhYW_ENrDH3rmFiUDa
	o1LKzhPEwmb.3pInszQUQSsu4KqVrwobQcRKz9BVLnHQ2suP4WOdb.5Wp6sarRXGhOxTR5Grocb0
	8xw9zp_jIaqULMRi20G6ZsPNtYcG1JzBOavXNHVE6FaHm34Yklurvr9j_RETtPEJ8RojldoR8i49
	G1AwcEO0ek4mfPUrDcmjwnYlCm1lT1kkIKQUwde7e9GKXQut_bfbP0UffqAvC88eWgzMW3SR6c8x
	uxqg000XphxRFzYplCHkA3aEYbp_WociT3CrvscuIKRba_MrDXj4Uz_emUkrkSxk8SODxbcKTYih
	dmSVT6cUnoV.zYicFF6hqVLJhzqUcUvTNKIgX_crWyWcMZAGSKBgSKeX7vkP3dTqYGSDVNcQSIHO
	ZEx69AgpNf.IpPEf1ZqaoG6QJYd5ArnUIITFn3f8soOxaWP8Bgei8uSrkux0xGYU2fTR6vNGFjFo
	0kp1rOyI_behnYnyXvUxL1qTi3vaM8pTUmPL8sUOBIrBCFnC.s3cMi0rqiY8yTrcyiiiQq98v10W
	AtivvW05.NhFHwrcxZ4VSkc_9rZqPGmGyMHCHMxsq1FCbhq5kkyetRXbyQM_TKCIWgtZtspiAL_V
	jOecAMCMAA0NhO2VYzxtlN0gClZtxWaLDmU5NTpc4qPpSvKmpKFRltyyu1fxA.6XuZJ.EnosLOZG
	RH56M3q5MyJJA8dv6AofO8.Li2J3BGDlHGJcJwImpoqCyVpEKUJGfyolP5V9ueqP.qeNdfTPORk6
	4O.BoeJO9OFeBXXX_yhqtVuwL1mpOSfeyWGxlMg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 18 Nov 2020 17:52:07 +0000
Date: Wed, 18 Nov 2020 17:52:03 +0000 (UTC)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Message-ID: <2090659264.7117408.1605721923947@mail.yahoo.com>
In-Reply-To: <mailman.165471.1605718957.17494.blinux-list@redhat.com>
References: <mailman.165471.1605718957.17494.blinux-list@redhat.com>
Subject: =?UTF-8?Q?In_reply_to_:_Le_mar._17_nov._2020, _=C3=A0_21_h_03,
	_Linux_for_?=
	=?UTF-8?Q?blind_general_discussion_<_blinux-list@redhat.com>_a_=C3=A9crit?=
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Sir: So that I understand you correctly: we are to install "Jenux for Android" on a desktop computer in order to get talkback working?
Denny 
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

