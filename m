Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC0548ED79
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jan 2022 16:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642175778;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=56qFvCB76u03EqPvRP5oUVAfjgRBNjP0CTu3wPT1BGI=;
	b=SLZmIZozFTzHdMFTYbPPUoyLFGCfsCHg3eEZYZguuNT/dinq3xgI1lzzEjNzDWw6eQDKXm
	3VnBL1rR4VjXsdZJLFiaAlwyZSDJ9WzUlk32gK2Oc93VEJkrITIDcN0q7IPqhXgO5+wEAp
	eVU5p0Q/oCyIrbpubwIy5fnX0zkyjnY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-XfxHl5KoPoO-zwPqXZEziA-1; Fri, 14 Jan 2022 10:56:14 -0500
X-MC-Unique: XfxHl5KoPoO-zwPqXZEziA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8C8D835E2C;
	Fri, 14 Jan 2022 15:56:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE80F79A2D;
	Fri, 14 Jan 2022 15:56:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3BF034BB7C;
	Fri, 14 Jan 2022 15:56:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20EFfXQG003792 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 14 Jan 2022 10:41:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D38241466C50; Fri, 14 Jan 2022 15:41:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEC9D1466C4F
	for <blinux-list@redhat.com>; Fri, 14 Jan 2022 15:41:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B561B3800523
	for <blinux-list@redhat.com>; Fri, 14 Jan 2022 15:41:33 +0000 (UTC)
Received: from sonic314-13.consmr.mail.bf2.yahoo.com
	(sonic314-13.consmr.mail.bf2.yahoo.com [74.6.132.123]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-512-McwWTpt3M0WBrDa_0J-uWQ-1; Fri, 14 Jan 2022 10:41:32 -0500
X-MC-Unique: McwWTpt3M0WBrDa_0J-uWQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1642174891; bh=RSSLwzYJX8tH47SNydr8Iu3L76g7ChQ8xLVboVL8JeQ=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=hyCbLdN6vsyDOC2PyhOcANdsnlY2YKwLIcmJyyLQH68KPnGsGwpR8lXNCke904BGRGOxjUvJVKelO/3uhq+Chenz4xwlpXvQu7lO53NyVacPe+ILo8CBwMeql34thTU+uOGUsUkLWSIevAhA/IFyt50fWMTLb2f/ym51M2rkSOvGn7wdWS5ifYq9l5MQyLVLS6JrWrOt95t7V2Rogd4VN4gcklKe5u3iqkZd9N8uHzifHfs5n3D5+Gz43KUaa4vu/0XhiT8pTf8Skx78nw8ReGq0+0pkR3W+sobK3F/BHSDGZPPXH9Rn03xezg3VY74dntRrMtTS4ixxaCKL6Gt6jg==
X-YMail-OSG: _BNUm.sVM1kYgZWVUV0f66FdSlDS_jSMiDyG_tOomL3sAswzV41f5NATB7vexef
	BlFn8ue8yT.lQjmwEmEFKEBcVR.MGBhiuob.a8_kYm39IUanf4WVXrK9FwqxnHwv7HQli8QFPoPO
	jDW_BBxp9r9_BIl0g3yNtIm8zGP92x.DOZxj.Nd.vMTAJa9hh1OeWq5JzpVYMp_ytrjOKXB.bn7U
	AeirC2Ch0IFrOVDkKTs3pHXNJgaoL0s_1nH7LNHA8AYbELDPRg.nY7MKT_FKD451_PZTXrj.oVMN
	BuFHlnx3dsCmWj.1Pv3D9bhaaCA_aOiRUncEIcaV1KiDP0agWPr17XxquGirXKLyPCIFWWjwJPK0
	JoiL.JSU5xq44HVR7xlilez2PCRzXtBvOBOHMxhrPBiUqvks5fFU2Ge1aXY5EkXOVs.oSLxN3ScN
	dKoCYPMeQjKhRjFvulhyY8b47bV1lQeGikp7nVOsCILj6LMv_wQQAlToSy3BZCa1fOCHwWu4WAxa
	BJq4Z2X2vkekSnkylclVnFEH0FX1c0TJ_XmeTs6QWxIwlLTd.Ukxp0Cd_fUjada3Zfkg8gj1fsF5
	WM.zPHmxkJbcmGNa0N5GVrZ2CNf2GcduC54ohLh0CCMvwXuvqE6nNqBlyDZC64y3omtBV8bJ9nI1
	4QjHq3QRbsGBEBQUvn_S13mQLqYY7U9txHAxNP8AjsHXiZ1xuQof0i6Z9WYy7nRka86nenqlBKXb
	GyR1b.xl6xLt5SfYHPsyqndoreNRG9gbQW4u3JTQxHvAps8IsvglQ1QAcs6xTx_ACGxU4cEiim9W
	xDxZQNNlplIQ5LdEHG4gnNPOuUi6CB_uNzp.AZV41KLIbHu.8zoag34jrGe7wy0mzlDrrS7WMVte
	gmorOXKmg2vc8bYOfXuJ0_wa73_0L8hfbmPKcpkfVZGkHGdC1LQmsB37AXrB7RlD3ohO_08UsPcm
	0xyXMCmZ87Uii1uzuPucdDBPf4hfR0UUsbVlf.taX_c.27FXSkC7CmOuZ6NqzTG.KgcusdYAQm2l
	G246MmYfgEBh3RSTfY1a3k7p3PZF8Btflffk.pC_Vt5tak.1OSIs.tiBOJ1qu30OkJEYlBnmbuEO
	0tX5kJBGXscQcvgdPjhM.uwqf7RSgGz416t1vyKUfq4qEagj3a.pDTWCWTGLySM_QoCoGgTl1LnS
	pvk2KQ_sH2aJrL2X.lwONGhIRWjKq5k.J5NXKfS2T5RR1G8USglqD8uoNMKYlgkf0MxCa3zROCU8
	RC9vaxeWIROq9.0qLEDhldKWu.GQ7dgc8Vr6FRnGZE4P06Mr4tlL7Hs3BimHC9zoLlXeRIPLUCfC
	ofUdcZvRQehyh9SGD_Ph0W4Nul9dzTIMNzPr0X7xqppxgaMIrVcoLaIplOm1spvRoWetXwgFE2A8
	Vl41f6toREIJRpOM8gcpJzDoGGnM4baNfrUSlZ1ydvtpIU8RNsX6gnGC.ALw7g7uIM5CrUaL32ZA
	goaqqpRBwPQG9bIrVjp0ewYhReZwiU7fn5xrf6je466q4nypVzKqjgNEpng7lnZdBy1svXhaCF8x
	ROaWbek0dz1rsMNrHpzXqXLMDaGfxKkIVC0YQOBlwWUZ03j8D5YjmUpmsm6RVyV52JO8EPF1nxwQ
	X_FA_zqOXfqosXcV0yPv4exoL3l8CxA1xBSLqa8_Z2ZASZOW4YrwRaX7HQA.kQAPE3aV.nWHOJ.y
	FLomHZS5EOrimWw2glVoOtkCH689MZ5rUHzX_tFeoZsh4CVLc.ddQT1jwEwbDT1bY5wW43gNw35T
	bh50pYdhla.mrAX6UgqYiW8bfvo2TvlSTUN54bTRf.zgDb_nx.ZbUDJAU.xknsPupajzq4sc.1C0
	2RZQSJUIOoYmFDuhQpw1aGJHab3PD_Klh2ORRD_ctfdG5vni8MUvumC7B1hPPaP.Uca0ruGqOszx
	95WOgg3m40ovgoXOfiVsZvYVfeSsSHUxjct5TnHhxoaLl8Y1Q7Kaz9PEWNF4Uu8T_ztrlOy.yWs7
	EvpT6w2u2SpV_q53tPKcBBHIOvyjkA.ncjFg3LonLBzMvR8aQpwG9VS.gnsS4D7VhzD4_3Q6gOiR
	pQIxMtsSEjTLuW1OVrRozzEIqC9JTuzXgrQK3EnUbqCCFDuxNcInUtFVuEyLkhEc-
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic314.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 14 Jan 2022 15:41:31 +0000
Received: by kubenode536.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 2d36f00a5a2352fbd49a68ad0c52910c; 
	Fri, 14 Jan 2022 15:41:29 +0000 (UTC)
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Could not find current location Message in Orca on Arch
Date: Fri, 14 Jan 2022 17:37:15 +0200
Message-ID: <87h7a6xr38.fsf@yahoo.com>
MIME-Version: 1.0
References: <87h7a6xr38.fsf.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


Howdy List,

On Arch, I am getting a strange message when I run my desktop
environment (Mate). When I press the Keypad Slash or Keypad-Star 
to
activate the context menu or simulate clicking of an item, I hear:
"Could not find current location."

What could be the problem? This usually happens when I start the 
desktop
with startx. TIa,

-- 
Good people do not need laws to tell them to act responsibly, 
while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

