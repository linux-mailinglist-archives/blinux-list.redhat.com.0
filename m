Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA54623D0
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222960;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Et3gDBSeRKGUn9GudZ63kLUxU2QfjO78Kh6N0fpFOvg=;
	b=WZdAGtpXSHiZnf5YC2UubWmD/vV/erggZl1HlHqJQ8dR/Rc8F6UbPCOdVX+Q46wIrSNQjw
	2l7TlUuDOUl384aqlx8FKOWp1J4eoPwcX+xnAaYWcAj23CK4hDJNTRaE9i/5aEQdJ08UN2
	FTyJSqDW+JLcC7BnhTRm2zb+Z1rEt58=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-533-iLpidnPEOEGVLg_G9zEibA-1; Mon, 29 Nov 2021 16:55:57 -0500
X-MC-Unique: iLpidnPEOEGVLg_G9zEibA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB260760C4;
	Mon, 29 Nov 2021 21:55:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B61F19729;
	Mon, 29 Nov 2021 21:55:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1536A4CA93;
	Mon, 29 Nov 2021 21:55:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLqqHC011481 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:52:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 39BE7401E4B; Mon, 29 Nov 2021 21:52:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 360A0401E45
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:52:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 004AB85A5BB
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:52:52 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-113-ssQ2h_8oPt2OwwMA7kpoaA-1; Mon, 29 Nov 2021 16:52:50 -0500
X-MC-Unique: ssQ2h_8oPt2OwwMA7kpoaA-1
Received: by mail-qv1-f43.google.com with SMTP id u16so15975720qvk.4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:52:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=8dGQE6XooolncPnze0crxyvVaz0vr5uTE4ax3L8G25M=;
	b=CDxO1K3knTkIHo6tOQPrCHlH7mxJbRouJZitN4qo7J6ujrNaDSR/L3ege+N7QyvjHC
	cwcoSYYVR3qZ/HKc+tw1Ciz1g36Jp0oUErzLu2jAiKl9gYNkbnpO01h9HqwZr3CJdaYa
	c557IOWvBERK4k7ULjQqIYG1WepVkESfa2fcak1MqXL/8uvwfxB3exTDaT0+B0/S3eOL
	E6HkaAP2XW77CH13245HgqBKPgPHx/7upib1lFvzmN70BTZ9UXopS+LNOoU70YdXndKG
	XOZCnxgJwOhSDWFdWDgcCXvzUsIiC2P22xhXYCj2Zf1Nq0raK6swk+QYoGAoJ92zkSEh
	43Ag==
X-Gm-Message-State: AOAM533X6+6SgX6ub7bSA5wCfZx5pUM9jCh2DC5dVSqOYds97D4bWSXq
	KqH1CAUTiN5InCvmx+a2QfxHgsnHtiU=
X-Google-Smtp-Source: ABdhPJxhQ+LZyiQmNvNh+8lnqZRsTH5OrpBNp8zp9SkEtlCpgqx2/6AdMF3LI0i9qlbhxWKFD2hJRA==
X-Received: by 2002:a05:6214:27e9:: with SMTP id
	jt9mr33057350qvb.131.1638222769708; 
	Mon, 29 Nov 2021 13:52:49 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	c13sm9929939qtx.51.2021.11.29.13.52.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:52:49 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<alpine.NEB.2.23.451.2111291643140.22277@panix1.panix.com>
Message-ID: <239589cc-0c15-a876-73d2-85865f0df0e3@gmail.com>
Date: Mon, 29 Nov 2021 16:52:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111291643140.22277@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Anybody that tries to do anything with emacs without doing the tutorial
> probably has no business using a computer since all they're guarranteed to
> do is get themselves into trouble.

Well, then I guess I have no business using my computer, as I couldn't for the 
life of me figure out the horror that is EMACS. I can however use most other 
text editors, even vim to a point, but greatly prefer the ease of use and 
consistency of most desktop text editors. So I guess I'm not so dumb as all that 
after all, and the above opinion is nonsense at best or possibly something much 
worse. Who the hell are you to say who has any business using a computer and who 
doesn't based on whether or not they want to use a difficult text editor that 
tries to be too much and do too much?
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

