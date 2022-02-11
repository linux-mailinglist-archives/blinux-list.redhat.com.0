Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9864B28B1
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 16:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644591983;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RHhbKx+FSs3pahU5c4td1cayNOJ//085IbEkApXDFC0=;
	b=Hbl4ER863n8swYlBVX4o+3zCuvorn64or6hqAteYV6e36gYFT4ARnfxezPrD5D99T9HoBn
	xChLleWWFd1tLEYgO2KtNz+40fB+WPxKUNeOD9yOyH6fGbboMgUFpHloSUFu0AXqkXjXFO
	HdThNGI7ASequshXbgKO3AHTpq/hWlM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-115-FSR7UQr8Pxi6mg-MQn412g-1; Fri, 11 Feb 2022 10:06:19 -0500
X-MC-Unique: FSR7UQr8Pxi6mg-MQn412g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B49083DD5F;
	Fri, 11 Feb 2022 15:06:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D931D2B6D5;
	Fri, 11 Feb 2022 15:06:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0C061809CB8;
	Fri, 11 Feb 2022 15:06:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BF68VK025704 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 10:06:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E2A841120AB7; Fri, 11 Feb 2022 15:06:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE77B112131B
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:06:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22BA63C00115
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:06:02 +0000 (UTC)
Received: from sonic315-13.consmr.mail.bf2.yahoo.com
	(sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-481-O7bcbaVVPCuP1CvU5OLJeQ-1; Fri, 11 Feb 2022 10:06:00 -0500
X-MC-Unique: O7bcbaVVPCuP1CvU5OLJeQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1644591959; bh=RBKUx8jMraWpcigFbP59NjRKUyQXcS8oCAL0Ug3iX2D=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=UBY0vG7+GsqzOnT830m7C7Uycp/7tldA5b4N2swetOhfmParj7S6rTy4NTgulPvWhBEcIxLz0mwM93BQDau86MzOA0BBdmIyuAUlZ6z2sDks5XEFuxE9EYuvVYE7aj1vwQBAnAf5hH/R+eZVzTeCtmnzhlrxpUC0wKzdHjjjc0ppR2Pbufp4M48VBCUEfkqltQytUG3r3t9haIkRFpjKrvVp7he/F0l2VnIaYqryUAAuxq9uXf2CP90ml2aIDl/t3ZYAC9/4wcsCCCUxPa5ZZ9ASzrVBi/MGXtZeoG3wdguoJ9z7S/GhFT6ws1HbSbBmdqQM4CJLAeyx7cUt9hl0Fg==
X-YMail-OSG: o1W8xqsVM1nEwyY_IUTrKTjz9vcuxRwHN8FNBSVW9HGWJlUm7JXG3KAad9YBBH3
	KSDVjRhaWxXtSgitEscjJy9pZv72SDvDILTIiW9OyjM.m0.bn.KsIF36SGWroUW5kHUTOoPrd8xS
	YiO6KtzFQEZppbPlRw5l9e1IGNioT1Cuf0peY9LkLrSwCF.lZrvcCa7mJbaokuxm_.AwUV3LOmbH
	EFeue2v_N3fB1p_zYe.XrgP725NXZrgIcJSRMWMq4YYt567BfFrR4xxuyXMgseih2mkZT2QQd5Kf
	ebqjrnY8XgINK553tdOs502flYNjYYD3YQ4KR0nE6_pNbBzcnzOiuZFXP.6BqgpansqEPsqVpFYK
	4Xg5PUzFDOyLZAAtgXBVZ8ITG0cB3Cr2j7yHv_f.amfU50A4TNrDxYzAY2whHJCg6XK5nglEbb4G
	vGQJSMuXyRYNFrGW1PJdghxmIDSW6vJhHaNSePctpXJuvVKXnnG0bTd_sEHr19kivSTjjCT5YQBZ
	W7nv8PTRt3CBmGXjkm8t_p2zD5c3a4D4eYO0prgWz5iVMm0srwW2lscSJb4RBcXtrewLcOhnVXgX
	nvh6M74q_Kfy9_.cnbuYPxb6VVQjYPXgHdilXpnwY0DL4pESImG8gcrrzn.Z57xZYqGlh5BdODDu
	hk2dwMH1j80LhL4.P2MTo_vHt4jn1.ABwIGpJZf2GxlkQG1Pd.mrD1ONaLmIqSFPemGH6DU6uyC6
	A9Hop69z3ghvIeXZjkt2DTQ1i4ti1.oMdJ88c79FlCGa1zKgDahcBLaXrEFXny4rn_s85.R9ltNA
	DDMNdHc3Rp7lafywiOq9_DSMunQZ6ei7VHDcFDbRS0_A.woz8JUBXh7h.WDvtZfGO54PG_roc01W
	W8.imJqg4JxmMzrAdY4oeylFWZSy.l3sBrJT7.mgBdXzqzfh70LBxnwyCYyYvSus.cC2J6VXzN4t
	SN.ihAvGAOAaVSWDZSBL8mQYdSuTSBbsU4XPpoZiTwtlSbENptixxn_kGhy6BW4bGD..NevMmt34
	Gd7MpVqBzYEUVYPiT53BiR9F0..hkFMIVRJ6kFVRQIrIIvPzIPb__9emkqnv7LlhP.3oC8qVivBm
	TFT9rZTE._6hFzsfUkE9IRs6WW9On6gL6Y6IKpBSyn_Cnc8zeXACFpfxaA5.EZQhPJjVTyFFPr86
	C5wQLL6843Lo3CSduAYcIPRm6sJJeF2S6iWzvc9Qhi8FRvf5wgAcSks0_wLYLY2FjatbyIQEDFK0
	4O4F6TFMSyqpQKXm8Z43Bj.jlqs6P10Z9JzZNVIvCiS1z5qVmUOKZ45apslw7t0KKrhw_0Ex.NOK
	vqjwvOSfgQH7TJ.zD9.eiOUcNKRHwubhCUVizQAuzN06xPOLDptDIG_MxmrMuMsswt28ABHLgIEw
	5veqADCWbjoipNFkPRV8aBkIbJ9pdrrMheDDB.lgC59B_VMBrSbKsRcnSo1Aqlr_DZnGdmCKcmLp
	NElQ2gLM33f6TMzYoJr7TN1e82A5GAF2cVZEC3k84Eq84yuVvxhNT4KmOZ3Jz3owDXhRBtT_YK30
	K9XEdRIEUaGux4m11Fl0o8NE14wrCeXekZOGkDOU6bPD9Lwf.3t2Imv5wPfJgM3rwcVxCOYrOqdW
	jA1MTuAKU5.SfAB_bnCFxRew2D5x5By7On8Clhp9JtW.icSyzlDbQdzGmBeQ5j0XJWEWbBxNUtjC
	xZhoMrWKbiL0rtAY_GXgZwxpfKC261AgkvdIrsVJ87pb7DlwRCaGgwRep3BKVDQ8oEL31DCApucE
	OR1SG4idklwnS6EmYR1avTlnH5ufaGDe9CZKBqtr4oYA7vj0QR2Uoe_TAQjglpG2iN0DfSdJSlG3
	q3F8FoMIGnvEKQKE7YG0jHBAkwQKeqc5uXu_kvH6.7MJ4uLQO_w0mJ3_U21DfdQ6lqYv3j6JoeVK
	QGCAqwnTrkpoqalk..r1PI2y7pQt6eGCchhhHmKJKqoQFEmLL1cHaXw47lORX9Dq2tLer1SzMGDg
	LTzG5ZmAnHWR8HvW5LK9OLyhCccSMuGM3uYLWMNSA8VED_omQ8QbwIbu_jqQGHcGe1COegECMer4
	ZEWYjIO.UUStHqQLDQB5dV.XPCLKHjy22fegvuRfL4bEXYYRVEuZWc9PDurt.9_E-
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic315.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 11 Feb 2022 15:05:59 +0000
Received: by kubenode550.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID d3f5b97d88ebcbb37fd44818b3781282; 
	Fri, 11 Feb 2022 15:05:54 +0000 (UTC)
References: <5e1f6fa7-125c-aa0b-0494-bb81bbe0b310@gmail.com>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Firefox and epubs and email queries
Date: Fri, 11 Feb 2022 16:59:10 +0200
In-reply-to: <5e1f6fa7-125c-aa0b-0494-bb81bbe0b310@gmail.com>
Message-ID: <87v8xlxx7p.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


Hi,

On Fri, Feb 11, 2022 at 02:10  Linux for blind general discussion 
<blinux-list@redhat.com> wrote:
> So a few questions
>
> 1. I know about epubviewer, but since I'm writing this from a 
> laptop,
> any other good alternatives for epubs?

Try bk which you can run from the terminal:

https://crates.io/crates/bk/0.4.2

> 2. What's the closest I can get to Seamonkey's built in email 
> with Firefox
> 3. Can I mass download attachments with Gmail's web interface? 
> There
> used to be an addon for Thunderbird but I forgot if it got
> discontinued or not
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

