Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4FDC23ADACE
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 18:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624118847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y2we83OArnrLzD8NGrBGIcszHWmC6XJzNPEcJK5Xyrw=;
	b=Skor+22XaV18DSC+Cgc1lhai/FAu5QcWqMwsW2kiMnXM/8XlAcWZmLRDGne0wBSqw1y8ia
	+5FQw6eoKNlV0YR7a4WUfszj8+8O3i14x+QBFUL/LBGr290HWBhClhoe5OmvVW+rOb5B2U
	wZ4G8mtHTEAxbJX+Cien2yEjkfe+/YI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-sdqI08MbOpCZcY336rYvMg-1; Sat, 19 Jun 2021 12:07:24 -0400
X-MC-Unique: sdqI08MbOpCZcY336rYvMg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E799D1084F4C;
	Sat, 19 Jun 2021 16:07:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D8F7190D0;
	Sat, 19 Jun 2021 16:07:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA6424A712;
	Sat, 19 Jun 2021 16:06:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JG6dBF011698 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 12:06:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 38F6D100610F; Sat, 19 Jun 2021 16:06:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34A29112D42A
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 16:06:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66C5F801E6E
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 16:06:36 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-jaqP1dpHP7uAjDVClZNElA-1; Sat, 19 Jun 2021 12:06:34 -0400
X-MC-Unique: jaqP1dpHP7uAjDVClZNElA-1
Received: by mail-ed1-f67.google.com with SMTP id c7so11876853edn.6
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 09:06:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VltRcmiu45EWFDJMNokaAlI4CxfUb5dJEiNnZwInP0E=;
	b=V6rZnX+dE6EjGl9FbAHxv5sj773GtMnix4snDvkCIRAyeZdxYfY8p3wWVVLXj5Nsv0
	HN9rtMfWDh4/ZPHiiuKoOphc+QCIPudxX+bbQoJgxOJyJlFV311vrc5E6PUGeVP/UM4f
	lzTKWXf92k69T0M7pGRAE8DOFpet+x7OEGFPDQ3W6tBwREQGpQ9J7dPOJombTJfFQe8H
	fkOnPasBVR2eCoHSvTO0v62Yne4wlute00MdIswnhEbPdgsbuGfjtpWEPSUc8mQjXeeI
	dB9xUm1+G8hRoUNDaEHlmXZbEbHysD2hxLQdLvZQh7aQzNK1OFOYME/xFoq7yeydzcfQ
	0sNQ==
X-Gm-Message-State: AOAM531TtA3PDEorKQKXSaEesCiyP5wJCKoCNbpW0ybxv/2qFLrkmq5K
	LUl4cSRGKrWIMd7kTmwogqJPfHN55wd0zeAIkwSwhANj
X-Google-Smtp-Source: ABdhPJxOLLd69g6cPst9dYcO1N+UGzMcTsPWAjwLHDJwyUQvvN1B3C3btMEqJRmNruucTFCj5hgaGJvEAFlZxNkD27k=
X-Received: by 2002:a05:6402:158c:: with SMTP id
	c12mr11257714edv.335.1624118792957; 
	Sat, 19 Jun 2021 09:06:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ecf2:0:0:0:0 with HTTP; Sat, 19 Jun 2021 09:06:32
	-0700 (PDT)
Date: Sat, 19 Jun 2021 21:36:32 +0530
Message-ID: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
Subject: Accessible linux distro for raspberry pi?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey all,
As subject line says, I want to know that what accessible distros are
available for raspberry pi? I want those distros which come with
accessibility enabled on the setup screen.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

