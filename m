Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 293FC45784E
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 22:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637358333;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7EKh99zXE9Mcz1m+hFjEGe0kFsU6iXEHSrYSff+eFLQ=;
	b=d1cDQCLkjCxa2+x5NKM9U/9rdirbIB9Fc+5AHn3jkzA84NNwWxDDiScp2Wum2rTVB/ICJP
	XzkWR8yqLfhRc1S7GYLoXQ0Z+gp6tAvjNxRjmYEbdaYJp7kE9SExAYuO92/LNdRpBH83Z+
	Tllg4CyRrCuCLoNaDDJ8lrxata/qvWw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-413-5gsmw0kHPweHWWqZUzaomQ-1; Fri, 19 Nov 2021 16:45:29 -0500
X-MC-Unique: 5gsmw0kHPweHWWqZUzaomQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8816F1DDE3;
	Fri, 19 Nov 2021 21:45:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CA1860657;
	Fri, 19 Nov 2021 21:45:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47C2E1832E83;
	Fri, 19 Nov 2021 21:45:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJLjFa7020959 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 16:45:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DA14E4010FEE; Fri, 19 Nov 2021 21:45:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3C4A400DFBC
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:45:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B99CC106655B
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:45:15 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-517-mKYUEFx0NeWlyHrC4v1ulA-1; Fri, 19 Nov 2021 16:45:14 -0500
X-MC-Unique: mKYUEFx0NeWlyHrC4v1ulA-1
Received: by mail-qk1-f174.google.com with SMTP id 193so11600848qkh.10
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 13:45:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rq+A7rR2QpBChLJN2bSXEDUg0bQuY+aSZCKOwLr1Pk0=;
	b=0TVyivL50ucpE59CrKVrrrpdm1QInlfY/dl+ZPenpSdYu7G4fWAqn3Bj1wEIGQOQRW
	eqThM0XBffGBu3Hv83JqUYAzqKOPWXkrHiEspoIr5x4nQaC6ZDAeJTl05DEVBqqVUIMB
	R0EvSZ3ow34anOo+7LfAFvc4NfHp+yKabyCLI9kFJjrszhVeZbQd6WA+o9mDM9CDP/It
	yRvrFNbCeTfTUOwEPVJ1xebBpZdTfvBdRS9Wsn1WE2NlFC+aEo9ANm9EKYX7mJx8n3re
	c0Ro/rQVAySLKhgIkTjCFr1PqI8LiS0KvdcYpg9B6Kh5XtjbyAmU7v9Hkb0z5qWQaUGT
	HtuQ==
X-Gm-Message-State: AOAM530dM8yIUVeG/PTJJsDYS4OyPFWLzmxAgedIfjS6E3ENKBKRP+BG
	F7yAlu6R0E8JYLvo5e8tb0DsTUOY9nQdVYsS
X-Google-Smtp-Source: ABdhPJyV4FD0jJIT36riCk5rYjXQkrkj+TXNGzSFL06Lye+/SM+UlUVx2OEOLS21DO2q5RAj/rPfdg==
X-Received: by 2002:a05:620a:2e3:: with SMTP id
	a3mr31095110qko.451.1637358313297; 
	Fri, 19 Nov 2021 13:45:13 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	j126sm464221qke.103.2021.11.19.13.45.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 13:45:11 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
Message-ID: <7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
Date: Fri, 19 Nov 2021 16:45:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ah, That is interesting. I do not remember the bootloader option. I will 
try to reinstall again and uncheck the bootloader. I bet it is the 
bootloader that changed my bios bootup options and made the usb as the 
default.

At what stage of the installation the bootloader question? I do not 
remember seeing it.


Cheers,

Ibrahim

On 11/19/21 4:00 PM, Linux for blind general discussion wrote:
> I never experienced speech being cut off in the middle of any update 
> or install here, but I didn't try installing 35 either. I installed 34 
> without any issues at all, then updated to 35 alpha and then to 
> rawhide. All went as expected, and I actually find this to be the 
> smoothest running OS I've used, with the possible exception of Arch 
> ... after it's installed and all the manual configurations are done.
>
> Installing to an external drive does require that the boot loader not 
> be installed. There is a checkbox to install the bootloader, and you 
> can untick that before installation.
>
> Regarding braille, this may in fact be a problem that I haven't tested 
> yet. I can't be certain of what is causing the problem, but if I find 
> it, I'll report back here. Fedora did get the latest version of brltty 
> less than 24 hours after it was released, but I'm not sure if that 
> fixed any problems or caused new ones. I do have a display I can use 
> to test things and try to get things working, and I do have a Fedora 
> account, so I should have no trouble reporting any bugs I find.
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

