Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C27453D27
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 01:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637108969;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WXG/y1zKZUdJe1E/HhzFEoGM0axMAV5AZeb9PuakEi4=;
	b=e5xKTkvKOJL0if4GuyUGwVT3Gof6sPMQlYRHMPCSms7ex+vOrmNuC/+6E83cRnF1IUHpc8
	uS2rTCs46y/IyVxncFOEbnU2TTicsgP3XZf2RyHxIHDvkJthwU6APtj2FIK4wRVU9wEcoa
	7KtInPFkaZ2XoJ8iav7AWXaL5EM7h2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-25-5jhXhzPyOYyhLQYWJZNGDw-1; Tue, 16 Nov 2021 19:29:27 -0500
X-MC-Unique: 5jhXhzPyOYyhLQYWJZNGDw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02D1119057A1;
	Wed, 17 Nov 2021 00:29:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B22C95D6D5;
	Wed, 17 Nov 2021 00:29:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 51C1B1819AC1;
	Wed, 17 Nov 2021 00:29:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AH0T9IX026195 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 19:29:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1B46251DD; Wed, 17 Nov 2021 00:29:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1565851DC
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 00:29:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D08485A5AA
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 00:29:06 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-294-JrGm7Q5zM--JVpZ7-fp6Sg-1; Tue, 16 Nov 2021 19:29:04 -0500
X-MC-Unique: JrGm7Q5zM--JVpZ7-fp6Sg-1
Received: by mail-qk1-f172.google.com with SMTP id j63so786516qkd.2
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 16:29:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=htzqHhJDqflSO36G8nAdKI/ozNc8KL50F1RN/dxsoZs=;
	b=wH+DPaOtpSTtzy4hzUjmMWYUc7kO7DIxi6w2XUmEybYoag5Umm2vv4QUUqdq9KaWzQ
	AOEbOvUohbWDtCXGceluNnMk+b/Cy1Nvkts8CVZLsBio6LtUVwUUGZV1nevB7jV2CAzw
	p62vb4YkG89CjzdlnRcEfVfFrxo5qJ7jREPC1gMXOQa9Rrc/SBtQ0BYNqxzprC4t/yYE
	GihpEG3jYzQxeOcIaPlGsF8Rnx2w7xR1U9d6/43eF7V8jDT86D7MF1yYHiRWgjKLIw6k
	DAZ5eIitmv3BqF/Shtl5LynPU1V1UqfRl5UjpUvmCogZYUGoTGIwO0TqhC/CkN4to9ey
	0t5A==
X-Gm-Message-State: AOAM532gft+rTRic+tHsdKWrlbnc/FxN/xCCG1rYDntzwuPMa72cvdrs
	4nZn1mlcYbYotCzxDUjBTf9cwJAXl16k4iHZQxBSyCDp
X-Google-Smtp-Source: ABdhPJxurD/+nyL5HWkeVnsQ3ipqQ5zJLYE5o2ktAOUAQ8C7Rr6kWsPwUI7/U5tlg2orG3q5InZ7VWvtJbpYR+MXz8U=
X-Received: by 2002:a05:620a:d58:: with SMTP id
	o24mr9362733qkl.517.1637108943872; 
	Tue, 16 Nov 2021 16:29:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 16 Nov 2021 16:29:03
	-0800 (PST)
In-Reply-To: <78629d54-ef4a-8028-4969-3f1523555254@hubert-humphrey.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
	<78629d54-ef4a-8028-4969-3f1523555254@hubert-humphrey.com>
Date: Wed, 17 Nov 2021 00:29:03 +0000
Message-ID: <CAO2sX33CgwLvR5B+UjevWRPSFq3HayeSrqGC+k=Hs4YQ1ZUGQw@mail.gmail.com>
Subject: Re: Correcting an sd-card?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

*double checks in Aptitude*.

My bad, it's dosfstools without the hyphen, though it sounds like you
already have it installed. I only mentioned it because I recently had
to perform an fsck on one of my own SD cards and didn't already have
it, and it's a case of the package that provides a command not being
super obvious(my first guess if I didn't know it was dos something
would be to search in Aptitude for fat, which would leave me empty
handed).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

