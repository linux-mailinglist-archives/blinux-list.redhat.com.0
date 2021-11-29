Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EC44623A2
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222377;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XMWMSAQDkwzuq3E+HV/JBykdNgZyd8dhONhryaMz1Qo=;
	b=akeL2249b4XQ9KeJXQ10z4Su8NU0dpss63X2NHa+wwo07NVu7rKTXVQp6aUmaNCOmRpldC
	rGV9Wf8jFXQYWw0TWuYhB83vbLRNu1fLSgxuGZQeXBTTDl657CqjGasa8JJXvsOcJjvVL4
	pYHKXoFndQNm7cTNiywk2VI+vTNMzfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-ep0zp-M3PrCOfT2rJRcZqg-1; Mon, 29 Nov 2021 16:46:13 -0500
X-MC-Unique: ep0zp-M3PrCOfT2rJRcZqg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF76A801B00;
	Mon, 29 Nov 2021 21:46:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C949560BF1;
	Mon, 29 Nov 2021 21:46:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F8D01809C89;
	Mon, 29 Nov 2021 21:46:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLk5KH011033 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:46:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9498E1402408; Mon, 29 Nov 2021 21:46:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9058B1402406
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:46:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74AD01097AF3
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:46:05 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-551-LzY_vBXLOayymwgQeG-Nnw-1; Mon, 29 Nov 2021 16:46:03 -0500
X-MC-Unique: LzY_vBXLOayymwgQeG-Nnw-1
Received: by mail-ed1-f46.google.com with SMTP id g14so77918696edb.8
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:46:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=R7IUMMu0IECLf38DB17e+LUOUFPgfNCY6GwaV0FvcxI=;
	b=66gDCxpBjw/U32R98uBsLH0zZ0y+e89B9VLZ7PLFWefsvj6d5iRHm/+UD6tS4BgqZi
	cmLTBFxQ0ZOKdgyroOiE3+Dhxyck3hUsU5EsL6LjpoEjFYsv0OSg6ZOMpc4G3grGj784
	R7XOUaIyS3gmWy+fLwMM6nSFh89BFq+7JF47ssh31ZT1xrjPM5+x6J9RrWQ5+YbxdjcC
	xbYgyy4WQcX38YKNkJw/TTndmj2nx9pV8jvMKDyBweZyeGzSzkivdIZCjhsWLFBs0fi6
	i0ZhoLgMG5e2yB1P/VAKDNAmn7/75zGFrs/HO9Q9FBeDBfo3ohx5X9qYq5jlRkYHfi1G
	SSOA==
X-Gm-Message-State: AOAM531Kc9PuoUSpBO2f1cNPQAURWtsgrfNi5UeYEydI/Ha6bPb71KHG
	+VyWzq4uH7BFp79S/Vth8ziX22e74SedcQ==
X-Google-Smtp-Source: ABdhPJzLyfXvEPn0KZ3MA8dkUZc2oaCh/Y2UCeac9mAMZ2SzErKib9woXBXd+IYyZrV3134BeyP44Q==
X-Received: by 2002:a17:907:94c4:: with SMTP id
	dn4mr62033167ejc.512.1638222362115; 
	Mon, 29 Nov 2021 13:46:02 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	e15sm9986860edq.46.2021.11.29.13.46.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:46:01 -0800 (PST)
Message-ID: <978c8dd3-f5c9-3339-3d1f-5f8845617c86@gmail.com>
Date: Mon, 29 Nov 2021 23:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Pipewire and Orca and audio
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
	<08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
In-Reply-To: <08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I am also on a fresh install of Fedora Mate Compiz 35, and I have speech 
in the GUI, haven't looked at the console yet, and honestly, I have no 
need. If, as I suspect, I am also running Pipewire here, I really don't 
think it's the issue.


Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

On 2021/11/29 23:37, Linux for blind general discussion wrote:
> Hi,
>
> Interesting.  I have a fresh install of Fedora mate and my install went
> without a hitch, but after doing an update to my system, I had speech at
> login, but not at the desktop.  On another machine with Fedora work-station,
> speech works fine.  I am wondering if pipewirer is the problem.
>
> Matthew
>
>
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Monday, November 29, 2021 6:45 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>; Linux for
> blind general discussion <blinux-list@redhat.com>
> Subject: Pipewire and Orca and audio
>
> So I'm convinced now Pipewire is doing something funky on
> qemu/Virtualbox. I've spun up a quick and dirty Arch system running Mate
> via startx. Pulse works fine but the moment I redo the install with
> Pipewire, Orca keels over.
>
> So is there anything special I need to do in order to get Pipewire to
> play nice? I did sudo pacman -S pipewire pipewire-pulse wireplumber and
> am trying to go with a Pipewire and Wireplumber setup. All other audio,
> like YT vids, works fine, Orca just comes out as a garbled mess, so it
> looks at least to me like Pulse works better on my system.
>
> Anyone else run into this with Arch or other distros using Pipewire and
> fiure out a solution? There's not much online really about it, just
> articles on oh it's a bug, or oh replace Pulse with Pipewire
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
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

