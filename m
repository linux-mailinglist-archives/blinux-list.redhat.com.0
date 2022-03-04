Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86B4CD10E
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 10:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646386343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eHloRUWUvewf8U8eG6JSyugvIgkGfuEi/DCleW+AAvs=;
	b=HqzkQNmC3vWAvOpGupdpJ5Xy4Skri7nc/QQTI50i+nKCSwaPGJPb+ISSW0CzufCze/AC5H
	mDoweU9tLuR/fYhBfylWkVZ/vx3V8WPAhBhT0yyFDs5OkB4wBO5aQZO/uczTM5rbw7IB1X
	eKr2ssE86e0xo75jGno/9t+aCIc2AFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611-_4yDmZr5Pkm9IWanFcrc7w-1; Fri, 04 Mar 2022 04:32:20 -0500
X-MC-Unique: _4yDmZr5Pkm9IWanFcrc7w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 037B8824FA7;
	Fri,  4 Mar 2022 09:32:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AFB11053B25;
	Fri,  4 Mar 2022 09:32:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03CE14BB40;
	Fri,  4 Mar 2022 09:31:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2249Viqb017714 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 04:31:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2A01F40C1244; Fri,  4 Mar 2022 09:31:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25E7C404779D
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 09:31:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D00C899EC4
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 09:31:44 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-381-selxYPT7OwSjxUZ5kVUNCg-1; Fri, 04 Mar 2022 04:31:42 -0500
X-MC-Unique: selxYPT7OwSjxUZ5kVUNCg-1
Received: by mail-wr1-f46.google.com with SMTP id x15so11710530wru.13
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 01:31:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition;
	bh=lldP9upLc8/MyjJgprnIqTT05Zm/q/mqm8KnpZtHVRI=;
	b=53DPrJkJ7qFZHe/6bSVgQ5Q7aEETyNh5x9cvCHVygT8c/qLK8v8wf75oLTQGYjrPsx
	jFHYdB+7xa/nFH/AlOrqWU0Q1M0Y63oLzh0zQVmyA9RguK84DZ+cf/HgtGAWJyPN8xUa
	b/yNrF7CbAxtmtnAP2wGywQwrTpC7jgtJcD6DES+HG0XRkiP6IycIzU8GQt7cYk9Ausi
	MYyOyAWwenth1ebRxfZMql6rZldBdd5rTN9DHnH2weL6/VTe5u+0IdlRMdSDTIKeCksP
	C26W3CQmoXNDYTr5BKTo+411/ENQMrDM4CLmch2dFn4uRWvA9spFYV49y3/k3LpzrMEF
	PUow==
X-Gm-Message-State: AOAM533ikxlMZMbePY9Ur+aNKZxpc+G3tORJUdVXDrfe1NsXUV0pcqA7
	CjFwymzBOuPLlCwEqBMKMnEmB1FyA8w8AQ==
X-Google-Smtp-Source: ABdhPJxrNtbKQfXs/J+gPpTeCBM+G5dHpXnPf/B6ekBsL0qC/z68MdzgBrWlN1UH8yRSYEvZl6B7WQ==
X-Received: by 2002:adf:ed03:0:b0:1f0:2f5a:48c2 with SMTP id
	a3-20020adfed03000000b001f02f5a48c2mr8824102wro.230.1646386300594;
	Fri, 04 Mar 2022 01:31:40 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	o18-20020a05600c511200b00352ec3b4c5asm5659406wms.7.2022.03.04.01.31.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 04 Mar 2022 01:31:39 -0800 (PST)
Date: Fri, 4 Mar 2022 09:31:52 +0000
To: blinux-list@redhat.com
Subject: Google is nuking simple username/password sign ins?
Message-ID: <YiHciAX/R+L65BU3@waffles>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just got this in my inbox saying from 30 May, I won't be able to
simply sign in with a username/password.

So does that mean for things like rclone, Mutt, etc I'll need to do app
specific passwords or set up Oauth 2.0?

Which leads me to my next question...

Is there anything terminal based that's like mutt/rclone that supports
Oauth 2.0 already so I can be ahead of this?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

