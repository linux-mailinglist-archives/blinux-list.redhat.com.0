Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A0645E3A9
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 01:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637886128;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hkRNaxS6BoSXAJB9X+/Hvdmas4S8XcaSUaUrZ5WOjqc=;
	b=JcyNHRvhbbMVo6Y1Dc5rrkTJQzuo7ho7x6cE6lve7TuHhFvBfAsrvXhFKJYp/YkMYgNNuT
	BMtrMpHwf/QqR4DAbid0iA6Y+ZTTftTWFCzg6nyH4QyMOygekVpXa0XKmt2qRVr7Pcas/3
	qbxv86WwTrPLDVuA4WP5Q68RebbBcTI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-l_eEU4zcM0iSXV4ki9zdrQ-1; Thu, 25 Nov 2021 19:22:04 -0500
X-MC-Unique: l_eEU4zcM0iSXV4ki9zdrQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC7088015B7;
	Fri, 26 Nov 2021 00:21:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0910B60843;
	Fri, 26 Nov 2021 00:21:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E45C4BB7C;
	Fri, 26 Nov 2021 00:21:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ0LnHs019760 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 19:21:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3C80F4010E9F; Fri, 26 Nov 2021 00:21:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36AF240149AC
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:21:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CDAE802814
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:21:49 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-246-JHe20RZpPqu7dYdrdCC5Vw-1; Thu, 25 Nov 2021 19:21:47 -0500
X-MC-Unique: JHe20RZpPqu7dYdrdCC5Vw-1
Received: by mail-wr1-f54.google.com with SMTP id u18so14926964wrg.5
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 16:21:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=CpWKcle1gos73LR5xUm8lcV+HUUIYv/4NUdsqLo18vw=;
	b=OYX2mrUg3gD+JRrhVCVWl+rmzyWH/8iARMO5r70MJVfgG1XdfvNgSGE4bv2hrO6RD+
	bjE+mR4f0SMJsYBWihQVY2F3SehNERTKiOgGA423DyHuGb+Lb26nCojBA5O1vpmaO9y7
	GV8icKYFMx9ecKMED/LiJtLxDBMTGBTuvh5HP6omjcDZId5rF6qVTCVgfx6U5NjzljRp
	bBaTOYJ9bMs2JnHGqBGesSj9sFH7UrU6Ki2p0N+eW9RO2gu4oAqLuCmYzUquuuTD7yRf
	qVgNAlx+0loBZNyXJPUtCJgm4nhWNceWVH+16aN8F8UeIMOAzrSipxVMKmrZJADIlwz/
	d6pQ==
X-Gm-Message-State: AOAM530RBk/WeKamGRFtWQcH3brPZMlkUKVHxWsdfr93rIeQG/EwO2+W
	qwbz9XOH1ag+ElXdLsmlu9vZu4J84pvuMg==
X-Google-Smtp-Source: ABdhPJxpJxdjzmSkAIg50yQPXEAD3F+5ngZmDiMR9WoPEKFZFIUx17+wb1iX6MPu5cG1ZDLWs9SUqg==
X-Received: by 2002:a5d:6043:: with SMTP id j3mr10731884wrt.375.1637886105864; 
	Thu, 25 Nov 2021 16:21:45 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	h13sm4192084wrx.82.2021.11.25.16.21.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 16:21:45 -0800 (PST)
Message-ID: <d1fc6df3-b30e-7368-3348-78b69c7b106d@gmail.com>
Date: Fri, 26 Nov 2021 00:21:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: More Fedora ISO weirdness
To: blinux-list@redhat.com
References: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
	<003cadf3-7052-ceac-77a9-e797b74b26e6@gmail.com>
	<8fb6ee03-276e-858a-4916-d86a0e337ef8@gmail.com>
In-Reply-To: <8fb6ee03-276e-858a-4916-d86a0e337ef8@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Got around to giving this a go...and Fedora's fallen over because, 
amusingly, the F34 .iso doesn't have a working chroot in this downnload?

All I'm getttting is no bash or bash/bin messages when following along. 
I can mount the file systems fine. I just can't chroot into it...this is 
with Fedora Workstation 34 as well, since I figured I'd give it another shot

On 11/25/21 15:02, Linux for blind general discussion wrote:
> Since you do get sound on the Fedora 34 iso, one thing you may try is 
> using the 34 iso to chroot into your installed system and installing 
> pulseaudio there. First, lsblk to find your hard disk, than do 
> something like
> sudo mount /dev/sdxn /mnt
> where /dev/sdxn is the hard disk where Fedora was installed. Note that 
> it may be called /dev/vdxn if running in a virtual machine. Now you 
> can run
> sudo chroot /mnt
> dnf install --allowerasing pulseaudio
> You can press control+d here to exit out of the chroot, and then you 
> can restart the machine and boot from the hard disk. If all went well, 
> you should get sound using pulseaudio instead of pipewire and 
> wireplumber.
> ~Kyle
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

