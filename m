Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF545B899
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 11:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637750724;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BZxqC6t4m4iE3vds5mZgq+AoGQr0Hn+6cCHmclHO79Q=;
	b=YM1qeHEsradim6WNYK3yD/iQ88INqNMLIDCY8F3C3rc7kdpC9OXEgGE2jxMIbEZtIA8fdo
	nAF96cdt/3ViySVmA3YrpO4GvvIOHEKFjHnKiSZWzBPEoxRmyMyLHB3i3sI21X9ZSnYy+G
	Vx4ySK+ihB0Bebm8hArCEORJT4Z5SBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-461-bq84-WQjMBO59i1q6GVvSw-1; Wed, 24 Nov 2021 05:45:20 -0500
X-MC-Unique: bq84-WQjMBO59i1q6GVvSw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72CB6801AAB;
	Wed, 24 Nov 2021 10:45:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D1AB171FF;
	Wed, 24 Nov 2021 10:45:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2C7CE4BB7B;
	Wed, 24 Nov 2021 10:44:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOAih00021482 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 05:44:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A6EFD51E4; Wed, 24 Nov 2021 10:44:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A054A51E3
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 10:44:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9B89803D78
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 10:44:28 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-318-AFVlP0YvOw-WNtah0sAmOg-1; Wed, 24 Nov 2021 05:44:27 -0500
X-MC-Unique: AFVlP0YvOw-WNtah0sAmOg-1
Received: by mail-wr1-f47.google.com with SMTP id u18so3357211wrg.5
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 02:44:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=43mnWqAlB5XVFFfRjDXoSihQiLy4YMyCIPpUJ36KDU4=;
	b=8BAsDatmWDo1nMmgYIbuLvThXWwHSrtv3cK+8gDP2Kbwfflf1Rpb/d/Xf61wgGGNWF
	KEGKuvmqBnnwrHytu801bECN9d6Yq9wyS3CZjPhTr5Hrej+C52UDo7K2rXct2UGOQFn8
	MLcK5JHKrvfPPNmQnWTpY3tBw6aRhQcyUlcQ6ciqwJOM3wtteUtb9wxTVtscnBFDXhsu
	WIdtG78TbKI1QJNTNItzPWdoBG3bnuoDFdTDjnceDBOx0fEHAoy9l0OuZ6N9mvn+DSJT
	5ZeFljYnpBfyoHcUt+gD/GPqcVZg2AHPFIZfeA8ntTVZAbDVMYaKoa5TywiWJgRDmrh/
	7mSw==
X-Gm-Message-State: AOAM533ozJ7QRaQz5TIlNlRz8nua+5y1FuF3LT/syCX/T94SG3n1upnP
	k1VEQYPnuFHU0V59YzixH93Ct82L8e+u/w==
X-Google-Smtp-Source: ABdhPJzkmDvRH+wGAyDz8y/4/I9GL7D+/pLuD+31A6ZbJ0nMaAjBLFDxGomYlsRRXbvRFhKG9CtD7Q==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr16773236wrr.370.1637750665556;
	Wed, 24 Nov 2021 02:44:25 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	o10sm18571674wri.15.2021.11.24.02.44.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 02:44:25 -0800 (PST)
Message-ID: <adaf7c1b-9937-9ad8-3520-78147036f9ab@gmail.com>
Date: Wed, 24 Nov 2021 10:44:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: In the mood for something new
To: blinux-list@redhat.com
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
In-Reply-To: <97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Wait, I never knew Fedora was a rolling release...I only ever knew it as 
the 6 month then I need to do an upgrade to a whole new system one.

So can I in theory, get the Mate spin, and turn it into a rolling 
release? I'm curious how well that'd work compared to Solus being a 
rolling release as well with Mate support though

On 11/24/21 01:16, Linux for blind general discussion wrote:
> Just chiming in here, as this question wasn't directed at me,, but 
> this would be my answer ... just my opinion, but taken from a 
> primarily technical perspective.
>
> RPM packaging format, a plugin-based modular package management tool 
> along with graphical package management, the copr system including 
> semiautomatic serverside builds, the choice of a release cycle or a 
> rolling release model, snapd and flatpak installable from official 
> repositories or installed by default, not a derivative distro, far 
> more software applications available from all of system repositories, 
> third-party repositories that can be added easily, snapd, flatpak and 
> copr repositories, all the newest software versions with support for 
> the latest compilers, toolchains and system libraries, no need to hold 
> back new upstream software because a toolchain or compiler is out of 
> date, broad and diverse community support, systemd, which I happen to 
> like, and Pipewire and Wireplumber installed by default, although 
> these do still have their bugs. I'm sure there's more I'm not 
> mentioning, but these are the best parts of Fedora overall. Many 
> distros, especially derivatives, just can't keep up with the latest 
> upstream compilers and such ... from what I've been reading, even Arch 
> has some trouble with this. Maybe some of these things can cause 
> potential breakage of older software, but this is why Fedora does have 
> the choice between the 6-month release cycle for its stability and the 
> rolling release model that is especially good for those of us who like 
> to live on the bleeding edge.
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

