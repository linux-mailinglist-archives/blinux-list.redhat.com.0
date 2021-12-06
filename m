Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0047446A035
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 16:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638806192;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+qlMoo02BzFcZbgjB49Aj0Q51bqkAGd7O+MrvUnBJnQ=;
	b=BbCqGWQWATcN2xOWXcVlJsn0s2dKbI2N/jhj2EfqIe04gQC6HJrOMM8Xds7QFqNqEWdRdv
	KAp2azOgyZwbv9CdBYw3S4y2EUoyc5lpotLULUrDI5HWsPZtFZ3CL6hJN/mRj+KxUVUXXg
	SsAc63v5EyYcz5gNqcH8gZb93FsXwrM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-368-GPLtj89VOY-WHSVJHk1hwQ-1; Mon, 06 Dec 2021 10:56:28 -0500
X-MC-Unique: GPLtj89VOY-WHSVJHk1hwQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7D64874983;
	Mon,  6 Dec 2021 15:56:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 227735D9C0;
	Mon,  6 Dec 2021 15:56:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 96F591809CB8;
	Mon,  6 Dec 2021 15:56:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6FqY7G031826 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 10:52:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2A19440CFD10; Mon,  6 Dec 2021 15:52:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24CEF40CFD02
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:52:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C823108C1C2
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:52:34 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-357-p8BUWIBpO3Soed012XSQXQ-1; Mon, 06 Dec 2021 10:52:32 -0500
X-MC-Unique: p8BUWIBpO3Soed012XSQXQ-1
Received: by mail-wr1-f53.google.com with SMTP id j3so23457154wrp.1
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 07:52:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=U3rt+7G5MXoR00FhfhEAAvcvQRvmVpkrb0Il/EYnYWQ=;
	b=X27OGXR3jc/PHIzs+zur1FIFPXgKB7VsoTXyYakTCiOYE90Cl0qpdIbYBa3yK3Yq5u
	m83JMHcHjJ+uTqeIz6trQ5VwdlldwD7SBB1+T/zj19PJUA3GN/3fnpZHpWPWv6oQTSkH
	tYM+Czds2BOmOQeTmRrLBdk3+OgAOLY0VkQGGWbJPULnc6nfpbADNVd6gMydo3OMc4qp
	L+5f5idmYHzQx0VnFDjSqY8VWXdvamXl3z3HarsMD4t7Zlsw7fsDsBkCpRm2oB8Yzjs8
	5xlTBdXxzrnONMg+wa8KLmrp3+4wOnjwV96/b9SENO5zHDufe81EVQ6nwJPDDCRdsbZr
	12ow==
X-Gm-Message-State: AOAM533cNRX52VnGKSdibtjFoGH/ohHP5l3Eh49Gp8zCEYw8D38WVB2e
	VK1wK5iS2R94mujzfWCd78NbZnE9UGqc2Q==
X-Google-Smtp-Source: ABdhPJynj6JfbSXPC3y+9ych5uxG8ZO9LUmnB6kxECoM9JkTNvgOSXhDIjp9bVCaiv+7IPfGmgmAcQ==
X-Received: by 2002:adf:b34f:: with SMTP id k15mr46251916wrd.125.1638805950921;
	Mon, 06 Dec 2021 07:52:30 -0800 (PST)
Received: from [10.0.2.15] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id 38sm12592956wrc.1.2021.12.06.07.52.30
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 07:52:30 -0800 (PST)
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
	<CAO2sX31ew6QCWrrjMdbvuVP2ZOhJSY8C=wM14=_dp3xE9LiB4w@mail.gmail.com>
Message-ID: <354c722a-f19d-1445-29c9-45feec068885@gmail.com>
Date: Mon, 6 Dec 2021 15:52:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <CAO2sX31ew6QCWrrjMdbvuVP2ZOhJSY8C=wM14=_dp3xE9LiB4w@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I've been grabbing the .tar.gz and unzipping it and using paths to get 
around it not being in a repo personally, as for addons yes, I'm fairly 
sure there's a noscript that works with Seamonkey as well. THat's a fair 
point about the bloat of extra things, but to me it's still lighter and 
quicker than Thunderbird, which is a lower bar to clear with each update 
for TB though...and Quantum, YMMV on that but it's improved a bit with 
recent updates however

Linux for blind general discussion wrote:
> I have a few questions about SeaMonkey:
>
> 1. Is there an easy way to install it under Debian? I'm not
> comfortable compiling from source(and I'm pretty sure everything I'd
> need to install to compile it takes up more disk space than Firefox,
> kind of defeating the point of finding a lighterweight alternative),
> and while adding a PPA to my sources.list isn't too hard, the only one
> I can find seems to be targetted at Ubuntu, not Debian, and I don't
> want to mess around with security keys if I can avoid it. I've tried
> to find a direct download of a .deb to install manually, but to no
> avail. And I did try temporarily enabling contrib and non-free,
> SeaMonkey simply isn't available from the official Debian repositories
> and even the Debian wiki gives the source or PPA choice. If it
> matters, my running system is 32-bit.
>
> 2. Is it possible to install just the SeaMonkey web browser? I use
> Gmail's web interface so have no use for a e-mail client, am happy
> with nano as a stand-alone editor, and don't use IRC, and it kind of
> defeats the point of finding a lightweight alternative to Firefox if
> the added bloat from the stuff I won't be using eats up all the
> savings the browser alone would provide.
>
> 3. Wikipedia informs me SeaMonkey works with pre-quantum Firefox
> extensions... Does that mean I can install NoScript classic in
> SeaMonkey? I hate JavaScript and the like withhow it slows down many
> webpages and often creates accessibility issues, but too many websites
> require it to function at all, the overhaul NoScript underwent when
> Firefox Quantum broke compatibility took it from easy to use to
> unusable, and going into about:config to toggle javascript.enable is
> more of a hassle than just dealing with all but the most egregious of
> badly behaved and unnecessary JavaScript. Getting back the super
> convenient and straightforward to use context menu entry from the
> pre-Quantum days would be a godsend.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

