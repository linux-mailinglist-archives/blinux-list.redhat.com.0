Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAEE282BFD
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 19:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601832434;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=ffgUcrpNxwDMHNp3QpqW/c3VQ59sUBlFgSsZt2lA7so=;
	b=Z53IZLVJ84kJ8f65HzptBxsVUWo62T+tpApA4462Qcz76XkirN2a4yPsL8sCpvkFaSmlYt
	pENGLX4QoHttIRePLlZ8PkSusvJPZy/0uzx5UWzUOhX79hRvoKasNpH8D61EfXIscAvEfM
	K/2XZGNfrvwlFGDrvVAPzaJtlMWp2ms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-wCUYj5qUNuizLx6qAWem0w-1; Sun, 04 Oct 2020 13:27:12 -0400
X-MC-Unique: wCUYj5qUNuizLx6qAWem0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E2B31823DD6;
	Sun,  4 Oct 2020 17:27:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEEB25D9CC;
	Sun,  4 Oct 2020 17:27:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36E80181A86E;
	Sun,  4 Oct 2020 17:27:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094HQsaN001204 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 13:26:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9FCA72166B44; Sun,  4 Oct 2020 17:26:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B2F42166B28
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 17:26:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5F138582A1
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 17:26:50 +0000 (UTC)
Received: from sonic306-2.consmr.mail.bf2.yahoo.com
	(sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-536-4qYC88KHO3iTEjMmTBu2dQ-1;
	Sun, 04 Oct 2020 13:26:48 -0400
X-MC-Unique: 4qYC88KHO3iTEjMmTBu2dQ-1
X-YMail-OSG: IeZzQl8VM1noOXWESxmXIfEdkREDAcoRRosq.dPyf5prhBC1bTjM4i6QJRqpAVG
	pO_mbUVzRSQiBbQdGjON3xS1mm5E_FZt1qj1P4v2oUpR5T1yMB4EJlfviIR4acS91Jk4NAD5Fkeu
	vkV8yZVwnKFW3rA1g9fL5FRJ_yj6_kgedclNIxfB7uZqK6qCbG.5qP2g8.N2K_4Ase3bprOw6T0p
	8Vu5lgkJnrKhZ1pugMY.FWbcpN8LfeyLVkAFj.6MBACMXGhqHwms233g__.qdcQJplcsu2CqVHoB
	xFfFqC1zJXIgUftbnUiZRb.ogJfBSSltz.2VJdWE2d840g_V4GTCrj3c5QABjIzjXyddG_QpcTap
	ru9QD_RJ1zL5rakVD41F2PIe1bgH0kjrFYdKWTlvKLJAbMO1uUIK.6Pqv9SkWc0CroxUENqQTpjO
	clLuztkA4yDNTr5wzloesYgU7QFo4VRHepX5kbiGn1.Mo_LMYxvlW9yqvAgNFK2MvraZPaq5DoIj
	xS5De4gSXXggs5XmxrhxJxqYovNVSCMLwnkep.3c9NH3SPRcrc11Bb.kdQnImN0aP2ZHCywk4XEt
	FGPCmv10edLxT7gM2LUGmHvNl78D0qfTdbsPL.sBqM3hAmC.Msr1xrFJXfrr_N.EpJLP3sF9B0Qi
	VxPK_mcxQpq9FYyCF9a2AzdTrlkSNRDGVk6V.oBrT1ZF_83ZLZpQW550IbHp7O51Be6ejjAkDuIx
	qCDBib7En50jZRPd8KNoPwzQ.CGHnW9wLRFSKOJSB96erppTomaaIaaibgIRn5EMYxp9f4qp1sp1
	vozhNkcU5DRSdNoNWgWND5abfhop.R2qEis3cFchqPwdvll0oJ6jGYLBgNwesRQ1bkEj1.nbf7Fe
	IUpA4Q4PPVxHturDBvS6Y5Ao2vClcRv.y79.VtsYt67hMozsC10kWxrLZjmVkpH5NkJUhpl_bcUm
	oi7Tk_g5ZCY_8VOr4lh1zIBeEnjVr3S5tOPV.gElRzwuiZPTzav5jeV7Zp2QlcX3yzNJSt4XPlRO
	qmYhq37Mn7D2zRWvDdr56tM83sdPGViaOJ4QPdXV2YVmIXHZpP1.NP9yDNEaAX_gwjzvxvMbD13U
	vqegSvP92.1dUcoR3c9YMKCf9c99VPEgxEMuVhMZPzFQ7qXMzwbT.SDC5dpw1AFBI6kEHed4pzSP
	8pS_g1VGmJ4D8YsyCPIrl5DyFrHHMvvlcCPKHYWVwqwgu_9Gg5dbeP58N4QvMTSrPVx3VjrPI49A
	8uFShDZk_FA1FwwqkE3JsJIbZ5gxIquV1ovaCFi.drfBnFL3y7YKj5ggEhfLWnMmzd4QkaNS.UkH
	ScMR_hvExWzIF3Kr5BNVc0wS9dycnNYV7Ou0N2zl7tBVmryJdjuzf_exqp_tfSazvTR6yix6iA7c
	PgZxz6bv6wAhwq1B207KYgwIGeUnZf.cLjQnvwe3eHYX6UP2gxSr9KQHZAxWcMtpKRNWOXQUgY1L
	fuRjTAlhDD23fAnugMneBkYfm.SNqjpoQG0JsWYtO0A8pAgLCwKfzrkIpvBNs
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 4 Oct 2020 17:26:48 +0000
Received: by smtp424.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 0990977c44bb8f39cb92ad210586bd97; 
	Sun, 04 Oct 2020 17:26:46 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Sun, 4 Oct 2020 12:26:45 -0500
Subject: Does anyone have a guide to the E speak screen reader?
Message-Id: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B.ref@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 094HQsaN001204
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,
I was wondering if anyone had a user guide for this screen reader? I am new to Linux and I just started taking a college course for it and still exploring possible options to navigate.
Any help would be greatly appreciated. Thanks,


Ashley Breger


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

