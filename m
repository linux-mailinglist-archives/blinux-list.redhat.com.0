Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8AB712F3704
	for <lists+blinux-list@lfdr.de>; Tue, 12 Jan 2021 18:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610472381;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qK5qKDYoiXQSFmJKtMjAuI7n98ByM6UQGP7ekAoF3Lc=;
	b=Lv22LDNT4TlWNjFcVeXDHfPqUV1OjKx/7/bmnorD+ESBn9w/+cQ6boM9st8yEX6Y0BKAyZ
	hIGH2iEherDb48YIS1XPcn9PMQEtPW8g9zwhX7DD4J3P03JaKza0ETutRUhQIi6zm1OWNk
	mJwDiGA5a0ExVQOpk1JX8VkU6idPYgE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-PyANGTBFPP212Ak5ZFyIdw-1; Tue, 12 Jan 2021 12:26:19 -0500
X-MC-Unique: PyANGTBFPP212Ak5ZFyIdw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2A77802B45;
	Tue, 12 Jan 2021 17:26:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 349ED5D9D2;
	Tue, 12 Jan 2021 17:26:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECCF81809C9F;
	Tue, 12 Jan 2021 17:26:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10CHQ43f022079 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Jan 2021 12:26:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA7492166B2D; Tue, 12 Jan 2021 17:26:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C43B32166B28
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 17:26:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EDEE811E76
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 17:26:01 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-594-TcPKCxPJMP6Ulm5Y6MTlZQ-1; Tue, 12 Jan 2021 12:25:59 -0500
X-MC-Unique: TcPKCxPJMP6Ulm5Y6MTlZQ-1
Received: by mail-qk1-f170.google.com with SMTP id b64so2500859qkc.12
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 09:25:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3GN5BhcHpiYq7e3OWO8go51WOrq8BPkFEv1CpL6iWLg=;
	b=t0vLrBOKkaxyVpsveW02EHNygOLKpQywH8WHJFc2iqgOaT7PtGgasHnN3EpXaQY4e4
	xIp2Jse0zZH/zHN0BpYqrgNtNnx5maZbi8MGCtF+mJ7AOoC/x5kV7cHmWVBSFhbBcMKs
	lmw8TSSJCVQWuNTjrp/lBuiXm9YWAPzjS3rZgABcafvz+1vsGrJPfNqOOG58N75xxKCm
	RDjBI4HFRe5zrqA9bCIN3GSbOIJoFmLCZGK3FBgoEG8dkNZ+Y3BduYRvl0kNACjKeZWr
	41pJsX3LUKZUR9iVMxqpdEt1n4Ocj7yglaxnw5lvaw0A20n1R7ztPPYceHCeuREPtg2g
	i7cg==
X-Gm-Message-State: AOAM530kSo9DELvSYDI7ltFVNgESLWD32UppjBtszVjcwkg8UlotaUZH
	6whfXkv3NoaDIHeOuXC7q1pWsiqufAs=
X-Google-Smtp-Source: ABdhPJzCV3C0WQv1eUZ3e7m9Fs/UB/9ztAX667V3uGUfKdc6bcy/+5WFt+5YcXGj3K7trzy5PTM7eg==
X-Received: by 2002:a37:27d0:: with SMTP id n199mr309035qkn.377.1610472358844; 
	Tue, 12 Jan 2021 09:25:58 -0800 (PST)
Received: from [192.168.0.36] ([204.29.85.5])
	by smtp.gmail.com with ESMTPSA id n36sm543630qte.71.2021.01.12.09.25.58
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 Jan 2021 09:25:58 -0800 (PST)
Subject: Re: Is this a glitch with Orca and Libre Office?
To: blinux-list@redhat.com
References: <161043867227.6.1989062734879827020.2997508@slmail.me>
	<87k0sia0xp.fsf@yahoo.com>
Message-ID: <4bb728eb-8b8d-82da-086a-3754a49a7581@gmail.com>
Date: Tue, 12 Jan 2021 11:25:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <87k0sia0xp.fsf@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is a bug in LibreOffice Fresh, but not in Still.

On 1/12/21 4:45 AM, Linux for blind general discussion wrote:
> I can confirm this bug as well here. Seems that Orca has a bug that it
> cannot read Libreoffice documents. I tried updating from version 6 to 7,
> but seems the problem never disappeared. Unfortunately, it seems
> Libreoffice is the only program that can handle office documents on
> Linux.
>
> On Tuesday, 12 January 2021, at 10:04, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> Hi,
>> Whenever I am reading long documents in Libre Office with the Orca say all command capslock semicolon, after a page or so, without touching anything, it will randomly jump me pages forward in the document, sometimes like half way through the file and then I have to scroll all the way back up to where it glitched.
>> I used to think that maybe this was an issue with Linux Mint MATE and Libre Office.
>> But now I also have another laptop running Slint and it does the same thing when using capslock semicolon to read all in a Libre Office document.
>> So considering that I am experiencing this in two completely different Distros, I am beginning to think it is some sort of interaction with Orca and Libre Office.
>> Have any of you experienced this? Not being able to read long documents in Libre Office because Orca jumps to some random place in the document?
>> Is there a way to fix this?
>> Or do you just use a different word processor? I don't mind downloading something new if thats what it takes.
>> Thanks,
>> SL
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

