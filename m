Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FABD469E70
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 16:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638805184;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mxna7+uMHcXXvHbHh/ji6/2FOamo8cj2Ij0iyv7KlKI=;
	b=gLdmqjnNLc+c1Nc9fIHbgCWp//0pVE+L1X/JhFn2Z7a35lPV2bHcEcwvuu5MeuP1IxHL/8
	xzPJHKbQAoJ7CTBG2mQ+/rpoQCRRFeVu9p1aiK0fU5efYcWt7hxH75tLQDENkgDZ1QQBCr
	m7TJ9SuAwkLOAhBEttbDuKcsGW7v1Ac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-389-JQuc2PYlOTmMXLf_4KBCSw-1; Mon, 06 Dec 2021 10:39:42 -0500
X-MC-Unique: JQuc2PYlOTmMXLf_4KBCSw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6D480EF8C;
	Mon,  6 Dec 2021 15:39:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59E3F5D740;
	Mon,  6 Dec 2021 15:39:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70D6B4BB7B;
	Mon,  6 Dec 2021 15:39:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6Fb6HI030687 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 10:37:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8100F4047279; Mon,  6 Dec 2021 15:37:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D5AE4047272
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:37:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66015811E76
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:37:06 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-274-GX7P7ZCbO0KgIyEh6hzcgg-1; Mon, 06 Dec 2021 10:37:05 -0500
X-MC-Unique: GX7P7ZCbO0KgIyEh6hzcgg-1
Received: by mail-qv1-f46.google.com with SMTP id bu11so10253770qvb.0
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 07:37:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=CnniUi/KQrM/DVmDe56KgywqVsTFEBJ/IqvHX3UMGwo=;
	b=srrKqb0O2dnIrNaiV6yFE34YrNPI5gtLwZEtgA9HvPyvpkDII+d8fFCt81L24T0VDh
	AWCR3u4Bcczl6wYTmjsGY3oL4uyj5SqCot9zkHSib4+koKtefzxCNocCY5lTcw1uqLk2
	S/XMer4HpKUFVKd3dx25mW0XM4RDtfN1ohLaguby1gHmiLJ1ANiRbzh2Fwsh/2uwQ8yW
	3/N9tUsEqZLYLCMeD5GNZjnmzFL1ahRJsPAc+G8t51qtvEeSeAorj7vcDIJ98ygHcWPk
	0nnqTxWL+tQ0r8xUaDpRVuMnpXJlTildYogBgLRPUN6pH2RuprUhvIG9TIMECA7raA8j
	zDIw==
X-Gm-Message-State: AOAM531MX/nZV/JgvUPf8/ATSyHT71h1623HTH3CubowfPfngafDa2si
	7jCGZkeIb5IGP6uyaOiWTWPjrkZAUKl77VduqlV2F42b
X-Google-Smtp-Source: ABdhPJzQNWIWg+EVsRSr4bLu6vUKbaVNQ46wmtPZKyWgdIj+5Tcm3A3brygDoYXln2YUWH8CRXl5wFWlOuPw53fBD7I=
X-Received: by 2002:ad4:442e:: with SMTP id e14mr37529352qvt.99.1638805023450; 
	Mon, 06 Dec 2021 07:37:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP;
	Mon, 6 Dec 2021 07:37:02 -0800 (PST)
In-Reply-To: <7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
	<CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
	<e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
	<7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
Date: Mon, 6 Dec 2021 15:37:02 +0000
Message-ID: <CAO2sX31ew6QCWrrjMdbvuVP2ZOhJSY8C=wM14=_dp3xE9LiB4w@mail.gmail.com>
Subject: Re: Suggestions for Ratpoison-friendly apps?
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a few questions about SeaMonkey:

1. Is there an easy way to install it under Debian? I'm not
comfortable compiling from source(and I'm pretty sure everything I'd
need to install to compile it takes up more disk space than Firefox,
kind of defeating the point of finding a lighterweight alternative),
and while adding a PPA to my sources.list isn't too hard, the only one
I can find seems to be targetted at Ubuntu, not Debian, and I don't
want to mess around with security keys if I can avoid it. I've tried
to find a direct download of a .deb to install manually, but to no
avail. And I did try temporarily enabling contrib and non-free,
SeaMonkey simply isn't available from the official Debian repositories
and even the Debian wiki gives the source or PPA choice. If it
matters, my running system is 32-bit.

2. Is it possible to install just the SeaMonkey web browser? I use
Gmail's web interface so have no use for a e-mail client, am happy
with nano as a stand-alone editor, and don't use IRC, and it kind of
defeats the point of finding a lightweight alternative to Firefox if
the added bloat from the stuff I won't be using eats up all the
savings the browser alone would provide.

3. Wikipedia informs me SeaMonkey works with pre-quantum Firefox
extensions... Does that mean I can install NoScript classic in
SeaMonkey? I hate JavaScript and the like withhow it slows down many
webpages and often creates accessibility issues, but too many websites
require it to function at all, the overhaul NoScript underwent when
Firefox Quantum broke compatibility took it from easy to use to
unusable, and going into about:config to toggle javascript.enable is
more of a hassle than just dealing with all but the most egregious of
badly behaved and unnecessary JavaScript. Getting back the super
convenient and straightforward to use context menu entry from the
pre-Quantum days would be a godsend.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

