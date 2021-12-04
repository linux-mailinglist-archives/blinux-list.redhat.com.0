Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 171A6468674
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 18:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638637756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TqEabcb1y9ltf7PxQgkfJyM3mCozHAAQcWhP9sKmjM8=;
	b=Cv6zbK6p9P3ZsO9cFJzI+QezL1Pg3A42cCZHO0Q5NMWkCcdmqKumx+RugjnlMBew7wcWr1
	lN1XRxK6U9tGl5rnlG42rYMHrJ1v2cMjdMm+uLuPaaFzKAhaPUPAqmo3BWkvtRZMfQ9tdl
	032jPubSd9ezQ6YgshjoZfqBgoOUVTg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-419-qkZ0Vp-6Ps6J2evW9IM4qA-1; Sat, 04 Dec 2021 12:09:12 -0500
X-MC-Unique: qkZ0Vp-6Ps6J2evW9IM4qA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE10C1853028;
	Sat,  4 Dec 2021 17:09:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F73C1B480;
	Sat,  4 Dec 2021 17:09:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 571BA1809CB8;
	Sat,  4 Dec 2021 17:09:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4H8q4J013498 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 12:08:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9D3B72026D4D; Sat,  4 Dec 2021 17:08:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9892B2026D46
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:08:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C97D78027FB
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:08:49 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-176-W3dcFMV8P3Wb3pvSCxf59w-1; Sat, 04 Dec 2021 12:08:48 -0500
X-MC-Unique: W3dcFMV8P3Wb3pvSCxf59w-1
Received: by mail-wr1-f41.google.com with SMTP id j3so12817613wrp.1
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 09:08:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=+r6ornBVAPM1Npc714tBen0KBUGqnlrlH8rPtTkn86w=;
	b=ZbYN/BGRKEVaA6w00KzCg7mgAxyPj2N0sIfi6yM1vccWBNYhBCn38mJ++BhKB5j91r
	awvZYRVBY604wp3fQi5IX/K25IuNfrA6JMiMmFWzZ6CUgB2xOtjNpya8MKVFvhKac6Sz
	th9tdS5b6mK1wkQjmVCNr9b7FzaaGi1/0Ux1Lw80AeXa7MhpXKwGgg3EJffG+k60Glfe
	GsCgTmew9E9O1A6uaMuseXTUUK/M7xODfNjOyq0E75Bw8Tdn13bger1My+IeFXtZfpGl
	jGzxqBOeU0ymANWvnAtUleuhhuGuhkLMzoin/9A/0az0YkLgmNusMsG/Hc5d1M5MdSFP
	Q+nw==
X-Gm-Message-State: AOAM532utWxaL3CQcs/0ZOidBE9oA5fvtsXDuN73NJ6BInR7qIXd9qXK
	1biV9RqTjmbA5+kdBk2KtlhKuT7TDm4=
X-Google-Smtp-Source: ABdhPJy91Ry6HxRb4sR88UZfyB98iokxohDtg/dEP9hqn5ifYFTubj403JFkFefEowjKuE4mk4fxsQ==
X-Received: by 2002:a5d:6151:: with SMTP id y17mr30308741wrt.275.1638637726445;
	Sat, 04 Dec 2021 09:08:46 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id n7sm6196734wro.68.2021.12.04.09.08.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 09:08:45 -0800 (PST)
Message-ID: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
Date: Sat, 4 Dec 2021 17:09:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Suggestions for Ratpoison-friendly apps?
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So my current experiment is seeing how it goes with a full on 
Ratpoison/Strychnine setup.

Now...I'm in need of apps.

Specifically the last two Strychnine looks for. A lightweight file 
manager/text editor. I went with Leafpad for the text editor, simply 
because for this experiment I don't want all the clutter Mate brings.

So what are some good suggestions for this? Seamonkey is the browser of 
choice, naturally, but what's a good file manager then and text editor?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

