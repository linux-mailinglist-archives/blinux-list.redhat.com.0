Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E1CD2255EDF
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 18:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598632719;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=WZj76BRkUuPdccBwHd7ztyzHk/siTnHQJMXQHGBPSNY=;
	b=i6dRYRtJ3PTxRlRWwSh4DPYKD9mU7cSABXAJ9UGg814hoVIdNKKvICy/UHVmFkbKa2JZEG
	9EfrRJCg6k3BMAyciF8EDLaBDSZY/azXis6t5xwQQ7ZgiCEHg5LC+sUUpAkBhYKkxXGD8i
	vRImp2ocenwNnR5AUiQYvyvQCIMzv7U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-paIbpTklPkOpMUL21w98xQ-1; Fri, 28 Aug 2020 12:38:36 -0400
X-MC-Unique: paIbpTklPkOpMUL21w98xQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 621B910074BF;
	Fri, 28 Aug 2020 16:38:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F25235D9F1;
	Fri, 28 Aug 2020 16:38:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 996767986F;
	Fri, 28 Aug 2020 16:38:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07SGcIwn014368 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Aug 2020 12:38:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 037E611231C; Fri, 28 Aug 2020 16:38:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF914113F9C
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 16:38:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDC8F185A78B
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 16:38:13 +0000 (UTC)
Received: from sonic313-56.consmr.mail.ne1.yahoo.com
	(sonic313-56.consmr.mail.ne1.yahoo.com [66.163.185.31]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-498-eM0sO51_MtWvxyJfZ6brgw-1;
	Fri, 28 Aug 2020 12:38:09 -0400
X-MC-Unique: eM0sO51_MtWvxyJfZ6brgw-1
X-YMail-OSG: wJMV7bcVM1mhaeXeY504yNkUFIYRpd41lHztr6r2HuRNVh6.XHJCKlIqblm18B.
	PwR06kaCny4guw7dZ.fG0ehbyvaainay7TND5tZLRBp94dCHMEyOrwJ0Q.QGGtiH7AGXFk.yojXU
	_Xd_YH7_AIF.MPW_v0SwyuZ40CxQS_CdHTyvTN4.PvwPlpsgRA_bSPEeDm3B3cxm8KXp6Uh7Y4yI
	DSx9M4oN4par20680gVYkZteQ_TFEr38xPsluJsCQLiude72Ym91s1OPfKsfsohROGsVZRebOPOt
	Kys7B8.3ov_j16zMTYIUfRFWqacq2NdaPe9HJj_yHtqR.Q6VJsPifdXGlXKYK4wzGp_CAhrinvFn
	Sw50o9rol9rFLmVHBz6lq_9m6dS_pYNVHSavUhfT9GLtGTQBVxB8wUSfgNZQI1v4c0v7H.PNO.W8
	7e1v1Ry90MkPpMFBuqvvL0v9hCaLzb_9AKgcCYkSjj20be3pcGAZk7a07JsInu6dWuVfealgmB8l
	0VKQW30AhHvhkc8ba.c3pNGw80ZnzIjVrKvtysSeuFcgqBCe7FvyNYZkoxclRSuuPFr4iSfepiB4
	4RoXNFATGp2hRTpldjxnoCb7XKVa9_WAG9v_S9yN7ot0vNOxnJDdOV5plBhkDhyObPRa5RJKJctu
	kA3nxPR0InGoIXFYmmaU._D2T85_jJCXsOtkXkYDmsJpuvrBQ1sCOpjKMr51BVqBe1lj3HVCkyxm
	xmioMNfRxZNEzU1RRQFDk0k_R7_K250mzcPosd1Y_4VUxe1qUqgUFbUu8cOF9sLVpesanGJJTqHY
	0STMj.LleotTqn2J8KZ2AW5L4yFawsOpozZpBO1ztUuLmL9iGEuLLvbFBC8VS8SZSMNF2lu496Z8
	OgvPZtGyhWiq3nUMB8zwEf0BwDXQhExGmUyWRI4QT.o6iMJZpI7P0oKSaXd46Ny.w5vIRrN2Fh8a
	FDfQ2cEjwMfdMbtkHn8kqLIT8mrdTGxkULk_tTpnZ5Dj1MvDP5aNEU1UvI9KNvhsnkm4FMqM3WKk
	56aCZMCQE7lBfZwRh_jUL1.eIkE8wcTPFpjj601HW9oXBCKxJlz07Al7MzdxkVLKBbsaS4pKLXIQ
	25sm_G2rq1t_Z8voNP4i3Qug7M5el9105.tibgYKqiJEqXThhEADhb.Sq9064La5MmmclfxIRtxp
	FmLwYsDy8AfwaKcWyt3wm7K9xhwSqiZIjDd6VrD2GilnmEiwyFMwNz6bbXHY2DDaryyn5Mo3NiVL
	0ScTZgNFUMc9z27jHjS7fdrOFXGCT14M77Aje8Wu5ymMapxe0Hrt5kLG94Hfgxoc34AZwrhGGQx3
	kvuPZxH4J3Z0YvqeaPgGgZBDjysAkl07ARbNkJjUWSgEzYhCw81iMz0Q1USgeRpDApVCzWhA64Q_
	8RKp7FjJ28.Dk45ydtMxcARBdvNP3.ID_bCuD2hHq8IkE_3eOPYeuX.h0vuceiOBnUbP9qD_GHEi
	NGl8cCtQtxA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.ne1.yahoo.com with HTTP;
	Fri, 28 Aug 2020 16:38:08 +0000
Received: by smtp425.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 838aec066fb6e576ebd0913e4d31027f; 
	Fri, 28 Aug 2020 16:38:03 +0000 (UTC)
To: <blinux-list@redhat.com>
Subject: ORCA user guide?
Date: Fri, 28 Aug 2020 09:38:01 -0700
Message-ID: <02cd01d67d59$993866a0$cba933e0$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AdZ9WXH5OOOmrnfhRt280jSiySPuag==
References: <02cd01d67d59$993866a0$cba933e0$.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

 

[I apologize for the cross post, truly sorry if you received more than 1
copy of this]

 

Is there a user guide on how to use ORCA, specifically how to move around
the terminal screen?

 

It appears I will not be able to get speakup installed on an upcoming
installation of RHEL on my new desktop workstation, and ORCA would be the
only screen reader option, since 'yasr' and 'fenrir' is not supported by Red
Hat either.  I was able to spin up a Raspberry PI over the weekend, and was
able to get the terminal screen to read anything new, but is unable to go
back to review what is on the screen.

 

For those who might be curious, no I cannot have anything installed that is
not supported by Red Hat in their yum repos, and no I cannot use another
distribution other than RHEL either, so I am kind of stuck.

 

Lastly, for those who are interested, I have a case opened with IBM
Accessibility, and a case opened with IBM linux support team, and there
isn't much they can do beside referring me back to Red Hat.  I now have a
'feature enhancement request' opened with Red Hat to have speakup be
supported by Red Hat officially, let's hope that happens soon.

 

Again, thanks everyone for your advice and help this far, and thanks in
advance for any further advice and help you can provide

 

--David

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

