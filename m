Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 672E749D977
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 04:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643255083;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OxiA3vlYmOyGO8bU4ob6248UtXxbQQfr0EO6GJ6+C00=;
	b=MpiMxvNpXKGA7gAG+jPXuwltYY3DuNCqNJx5bqmsWa7DbgH/pSDTdwYrhruA4dYMiASZGN
	3iLtgY8Al3xxDMqt9mV+Gp9ytHiZ17a1hu2LnLgmE7r6CDDoaRHijtLf5pQVNk2R+c3cWg
	uqaZDGSIEzTeztN9fkyqhlOGG/MOmn4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-Cn0es8eGPE625TMQ2Sl2bA-1; Wed, 26 Jan 2022 22:44:39 -0500
X-MC-Unique: Cn0es8eGPE625TMQ2Sl2bA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4CD246861;
	Thu, 27 Jan 2022 03:44:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87C9DE2C4;
	Thu, 27 Jan 2022 03:44:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 233A01809CB8;
	Thu, 27 Jan 2022 03:44:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R3iVlU021113 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 22:44:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D530740885B0; Thu, 27 Jan 2022 03:44:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D117240885B5
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:44:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9BA33C11A2F
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:44:31 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-44-Hq3IqeytM0OvxIsBukpM7Q-1; Wed, 26 Jan 2022 22:44:29 -0500
X-MC-Unique: Hq3IqeytM0OvxIsBukpM7Q-1
Received: by mail-pj1-f49.google.com with SMTP id
	b1-20020a17090a990100b001b14bd47532so1649416pjp.0
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:44:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c4lSXDyBDjE9quRHWIlVyGMwg9ICvqcCbaaSr/1HSvs=;
	b=qwYSOVaxy72o5KrvgicNEoF08CXajnjGKe29kGwEzjZRZ+siBBuzdK2pdhuv5PhsOW
	uNniTf1qWWdhi39w5DeUImoAgMt8LkSwcJsI6RPuuyJAfg+QMDvXkpq8TmJ8q/P8pALI
	IT28AvLEyf3IglR6Bza77CIxQguY9ybWrVVzAcqU0uARkO+KiGaykdej4ONK9itmL/S6
	o5CQLiwc2c2mYOfYNTCYWk+SDMc51ojnlsyzZjPG2UnKDfcsOdRGVfBVik2WrxY3I5np
	OdClOSbDE8iEg5/EKe81ZJbIO5cNyyRvcxwAn2RSmB+2IrnR3GDVL/DxmrsfK1aoXKqF
	/V4Q==
X-Gm-Message-State: AOAM532ePsesE+00+Hp6qHAGpdZQssOoWJUcKBt5UuNLqKs8tJ0jsgOK
	TjqCk4gwtUE5m4fnkk0W2PscY7VaAA1K3sBEoC2BUXhv
X-Google-Smtp-Source: ABdhPJxpaNfOCqHszAFa/yiABkyoEyEMzhx13WBG+/zLIGZpq2H2oGOksmjhrG9fGfR8R57TaPvMLrBqVG6/peHFYbQ=
X-Received: by 2002:a17:902:8209:: with SMTP id
	x9mr2115381pln.85.1643255068644; 
	Wed, 26 Jan 2022 19:44:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b655:0:0:0:0 with HTTP; Wed, 26 Jan 2022 19:44:28
	-0800 (PST)
Date: Wed, 26 Jan 2022 21:44:28 -0600
Message-ID: <CABKqQvE_+b80=9-Nb=8Hm_=tQqtavgKt+5Hg=0r6vE4siZGaRw@mail.gmail.com>
Subject: Orca's speech is way too slow!
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I set the speaking rate to 100% in Settings and it is still painfully
slow. How do I fix it? Thanks.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

