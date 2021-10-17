Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D9CE4430BE5
	for <lists+blinux-list@lfdr.de>; Sun, 17 Oct 2021 21:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634500681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ejCxPkInsVrBTSgyRpc07FOxhaK3h2+iOBsU/+9i9XY=;
	b=VphgwYmEVbunAcwdyrabmAb7DXpagbWzpIBppF1z0j5lCsKj4kSXMcGld77NmqfHzpDZPf
	/2fxrcVIVRdQwNyHk5VwJQTN4T31b5Kre/UaiFPZRdRFJFw3rm67kAg67A5sf7ROaTNCNQ
	dPmx/gnRAdXJCsKtV7h0LriKHNLsARU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-R7d1Qt3MMBe4yrZnm7tLEA-1; Sun, 17 Oct 2021 15:57:57 -0400
X-MC-Unique: R7d1Qt3MMBe4yrZnm7tLEA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A7C1806668;
	Sun, 17 Oct 2021 19:57:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A53B560583;
	Sun, 17 Oct 2021 19:57:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47BEC1806D04;
	Sun, 17 Oct 2021 19:57:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19HJvWht018096 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 Oct 2021 15:57:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 340D02026D48; Sun, 17 Oct 2021 19:57:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FC172026D46
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 19:57:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65621185A7A4
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 19:57:29 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-att6E_nvN6STlfQ-Pn2J9w-1; Sun, 17 Oct 2021 15:57:27 -0400
X-MC-Unique: att6E_nvN6STlfQ-Pn2J9w-1
Received: by mail-qk1-f179.google.com with SMTP id l7so13640151qkk.0
	for <Blinux-list@redhat.com>; Sun, 17 Oct 2021 12:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=SV3oUYSl9LApXeK8iyZHw1nhB9Pm1nesBYk6e0fjfG4=;
	b=gafsEZTBxc82JBLEtt+GpfYemmAbXzZzq6/mPSWRGSt26U02ZN3G//tdpYYj13oG93
	+cU9YjABBfFBQ9tYv9fFnDI6yecNWWOIUswAGgeIPQymeEuShfTzzrXtpbpwdZp1SPqj
	f+SQWp1ePxoU2gs+6FEXnzBTl0Zl7TtFfd6EGCxueP7VB/APci0LH0OTQkZV+UT18pbo
	h2vUIDgykQW/UDr7vpQoGrZIdDNRmQCg7GG7HPilJc8PSjbn7QAxokzyNB9Ua5zJNBcP
	bsDCT8ZX6TF45bxwsdR4XNLOI86Ts1oH6oXHbDk2h/poNQ+jokzWKLovks+I0CXvFI8T
	lihQ==
X-Gm-Message-State: AOAM533sizTK2tGj231aH8Ud8/5zGMgU29mCOfRpx7FsoPn2uiR82m5f
	4RLjmBrRlrwDp/ICKfSw7ysp4qI6uuI=
X-Google-Smtp-Source: ABdhPJwARx+7rdHamcZdCUXw+Gxj6x14u0aCwcrKHYCytRkOte3u25WvmOrGnfy+zIWuoHYw1Z3mig==
X-Received: by 2002:a37:a5d1:: with SMTP id o200mr19252223qke.30.1634500646964;
	Sun, 17 Oct 2021 12:57:26 -0700 (PDT)
Received: from smtpclient.apple ([2603:9002:304:d847:b599:7fcd:29a3:7899])
	by smtp.gmail.com with ESMTPSA id
	s14sm6158063qtc.32.2021.10.17.12.57.26 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 17 Oct 2021 12:57:26 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 17 Oct 2021 14:57:26 -0500
Subject: pinephone
Message-Id: <C4F55E52-8D7C-4422-B386-55EFB62DBF1B@gmail.com>
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Somebody wrote: smartnews is blocked in Turky and perhaps other countries.  

Brian Tew here. I always forget this list hides the name of posters.

Why do they block smartnews? Just censorship I guess.
Anyway there is a web link in the post.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

