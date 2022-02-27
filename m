Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE994C5FEC
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 00:40:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646005214;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aJ/mKGMjz4poVR6xNdzgT1N4hMvxvUm03iUAxN7dT5M=;
	b=g5Ws6YoSFflTnPd+QZtSr5XK5ZhWmR4QL2gnJd13tHtVE6LCG8E1x8LN8PeuIL4+MjUA9n
	ZSaIj+a4LDagLb4J1u2HecgNw+1preaccvjE5Qtjyx55YjjFuQcu3LdkU98HQLseMNCNMo
	TplM/E8sXGygLIydiOf70mTuJj7dw6g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-_nMx5WBfOtuvsxDn62CaCQ-1; Sun, 27 Feb 2022 18:40:10 -0500
X-MC-Unique: _nMx5WBfOtuvsxDn62CaCQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B295E180FD72;
	Sun, 27 Feb 2022 23:40:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77B0A4E2D0;
	Sun, 27 Feb 2022 23:40:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A8AD04A701;
	Sun, 27 Feb 2022 23:40:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RNdvwv018575 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 18:39:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 89E904010A14; Sun, 27 Feb 2022 23:39:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86199400E123
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:39:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6DEA7185A794
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:39:57 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-240-zv2ZvODyNhmTAsZBGyyiLw-1; Sun, 27 Feb 2022 18:39:54 -0500
X-MC-Unique: zv2ZvODyNhmTAsZBGyyiLw-1
Received: by mail-qk1-f176.google.com with SMTP id j78so9150035qke.2
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 15:39:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=JFa38mdSRv1OAqCnYMF82REzl1+YALmG44OcsLk3358=;
	b=5jJyE8oONfr3hEAo+LlmYdZ13OlopDsNlw4d3I1wJ8I/MAy6WGycUMsjA9jhzsvn3I
	kRdp5+0zvI8ZNUI+a4JEROGuppfr0s9FKEg3G1Q3lFWSn46mxtDoBRnqAiBDoC5baQb9
	B6VY7/rBIuwy3114lwNQbSxdbogoPa+iizddvXrzU+6/3uEQep43JevnuGDEhZ7WjNFp
	6bpt8Xkk4dAIgjWcPKQJyMicRomEXEeSG+rbXcK4LLLrt4VVhV89qEElJME2dQ+gVxZx
	fnOb8HRHnRi0pKK9iU1Bvy66lxVSnlt0sTSnnkxODZb0ao9oZPcyvUbu6JadmCiZ+MWk
	C9ug==
X-Gm-Message-State: AOAM533ugGvdtfHplHCp4sAnf39XcIGiRliGkALsXVOWGxyObtB3AuAh
	qy7oWEgDtjU2XHKEb7pDCt5+IrBcdvacKU4yulHgDpxefNE=
X-Google-Smtp-Source: ABdhPJzIJeOWEWQZWb6fphSbIwaRIXng45nymkiY2hDGXOzKlWOoWlQMyssdUIVktTBbwXE/aC9rFf+f1biPi0H5bVU=
X-Received: by 2002:a05:620a:1981:b0:477:6e45:3e7d with SMTP id
	bm1-20020a05620a198100b004776e453e7dmr9697782qkb.407.1646005194362;
	Sun, 27 Feb 2022 15:39:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Sun, 27 Feb 2022 15:39:54
	-0800 (PST)
In-Reply-To: <92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
	<92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
Date: Sun, 27 Feb 2022 23:39:54 +0000
Message-ID: <CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
Subject: Re: Voting: Which game would you like to have on Linux?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As I've never heard of 2MB and it sounds like the kind of thing that
would be difficult to search for on Google, mind providing more
details?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

