Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5D044FCB0
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 02:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636939109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X0+fOGyzyJETXHsCKaQPhjQV6ICqd19yDJmCwhaLPqk=;
	b=CUIcXDmeewwD+rCR3D255aUXi25KPorh4Ej/YDAxPeqVja/ZrGkimFfoywjnSq9bag66RL
	Y7Vu+5jfzUCLLHkgFiO5s7VG8fyFBaLgZzbkoTuy/M3SEQSIHtuzCjFVwaKhZGcpByRUi3
	c2ucjVRvlQ7aqzERb7Cw+zQhyQVlCck=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-KWAreQZFMtCRvU13rhdqZQ-1; Sun, 14 Nov 2021 20:18:25 -0500
X-MC-Unique: KWAreQZFMtCRvU13rhdqZQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C97CE8799E0;
	Mon, 15 Nov 2021 01:18:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10E9A14104;
	Mon, 15 Nov 2021 01:18:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DB774A703;
	Mon, 15 Nov 2021 01:18:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF1I6Xu013115 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 20:18:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 61D0220296A2; Mon, 15 Nov 2021 01:18:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D2782026D46
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A4D0181E060
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:18:02 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-526--aP2YDicMzGTpbIeesRW4A-1; Sun, 14 Nov 2021 20:18:00 -0500
X-MC-Unique: -aP2YDicMzGTpbIeesRW4A-1
Received: by mail-qk1-f179.google.com with SMTP id 132so15061450qkj.11
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 17:18:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=h9JfNj/SWAQGH7SDfAmz1GFBlBUJZMnY5MJqOq2QOB4=;
	b=y0dUkjPVGbRUzx0UBMLlfaWGCsGTvQGqDBFinD2sfokGjMWdOXEKvDkc4rUqHAPlfN
	BVVcy3MicA/x8fMY+NKyg32Fls6MWOpt64IMlxs0WgZ4cKWCu2YdNP8rgXMviXaz8aiW
	kM9+xdsXmzmvD8Z79zG+og3MOQSeeCtnEWS//2CwSx2yL2LKT/g5eGo+5OoRVcgin3uJ
	JAieykxwQ0O9zIkyRLWBvUny3sZQ6zxoKcDApA2z+p3ss2p+4qArD4Zh7ZX95QkRZY39
	RbfrFjzPXVMO84IOu4LuVIXlipuRZxbLKQgXYCIjg7S/G+X5FU6BWXMu1aHxJnDSY508
	oFQQ==
X-Gm-Message-State: AOAM531ir8a6RC89Insp8AJOVAhSLbpGjtmNn/GrdduaMQkUeSQZqcmm
	9j8JKhMORBSHPTk0Dv5dEH+qIh4KCnw=
X-Google-Smtp-Source: ABdhPJwJvh38DAIfdLn7fuA+4DIGTX3yXIPUYricuk1/wHDqUkzENiWkXbtf2NfLq7I76QsLjzaARw==
X-Received: by 2002:a05:620a:270e:: with SMTP id
	b14mr27318760qkp.475.1636939080352; 
	Sun, 14 Nov 2021 17:18:00 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	f12sm2826375qkh.22.2021.11.14.17.18.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 17:18:00 -0800 (PST)
Message-ID: <332d0d0f-c44e-6691-0ff9-4476fac2bbf2@gmail.com>
Date: Sun, 14 Nov 2021 20:17:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
	<24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
	<d6f72308-9a85-3cb1-8bc1-56c0ca459da7@gmail.com>
	<YZGyDMsFFKd/+PWz@panix.com>
In-Reply-To: <YZGyDMsFFKd/+PWz@panix.com>
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

I don't see any "configurations designed for sighted users" in 
Thunderbird, and I can have a brand new installation of Thunderbird up 
and running in about a minute, even without copying configuration files. 
The very first time I set up Thunderbird, and even Evolution, it took me 
3 minutes to set up two email accounts and start reading my mail, and I 
could even click links in a message using tab and other forms of 
navigation that I'm used to in browsers. On the other hand, Mutt took me 
two weeks of reading and writing and editing and I still couldn't get it 
to give me my IMAP mail. Granted this was more than 10 years ago, but I 
don't see that things have changed much in that time. I still wouldn't 
recommend Mutt to anyone other than those who feel like writing the 
source code for their own email program is a walk in the park.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

