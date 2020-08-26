Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 90FF1252C57
	for <lists+blinux-list@lfdr.de>; Wed, 26 Aug 2020 13:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598440777;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WHoINYoOAjpy2CCcnAN5jEABlhV/fybZvwe0bNZksDk=;
	b=POUFoX+qVdsoMsziYE6e08D27C6i13cBbCAmYxKaTglXjTUDu14cQ9ZCpSY5EhTxiio/y2
	0vZQtktaJrH4eXMmI2g2J2BSVvH4oHkkHs2rMtRRnTU7nr/0chbCTYWs+f8WVncE0C4Hxv
	NPVnudi3uysLDRY1AWOoO4quv7Wo5NE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-plABs3k5NLuOBHn-cIdPcA-1; Wed, 26 Aug 2020 07:19:35 -0400
X-MC-Unique: plABs3k5NLuOBHn-cIdPcA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B911110066FB;
	Wed, 26 Aug 2020 11:19:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B78C808AB;
	Wed, 26 Aug 2020 11:19:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15B78181A050;
	Wed, 26 Aug 2020 11:19:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07QBJJ94008631 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Aug 2020 07:19:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2769F2166BDB; Wed, 26 Aug 2020 11:19:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97B9F2166BB3
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 11:19:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B63E8EE623
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 11:19:12 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-457-tPd7f1PlOqKLjCRgWsmp8g-1; Wed, 26 Aug 2020 07:19:09 -0400
X-MC-Unique: tPd7f1PlOqKLjCRgWsmp8g-1
Received: by mail-io1-f49.google.com with SMTP id g13so1672244ioo.9
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 04:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EGP9QYOsDNwROvfMTWmLHovzPZve7I87dkOHd0iUsP8=;
	b=KXX5uudhR5s8C2onYJZv/7laZ8aP2uV6t4mnFFp3iFeHfUqKkeGO3yZAV1jfgqdfuQ
	Xc17Zz7gpKCweAi/4E+UsOqAzBRh7AvWD6ReLTFafIkGdq/rPW/O0HDx2eGtJxkGOP2Q
	r6HgJZ+OYwR1TROyen7xvSwlEK/izKvJAP5N+vAe35wq9vqdHSikp6sGF2aO4K7oz1q2
	LzqVdAM6uNfJydBTSnqBjKKLrFo5MgsISXhhPh1ZhaSMfSQjszaF6hVWrTd1iVM0SYCe
	bBGi+l25SgOZWojGBIAc968+sr3kO0gjlIJ+oZ5M/uMBPQo+ParGq3/ehxGrvdx7lNej
	NWww==
X-Gm-Message-State: AOAM531tDKjgYoWIErDI55bX/9gECxbMCpeMdDYhBKkn/RdGJ3EIEfs0
	bdTJIjXr47GxVIfvvrUZ5SrgxQ2Q8TpxNFbQFya6loLz
X-Google-Smtp-Source: ABdhPJzwhAcuCpL4X+ukem/bXMUrCxlM/VEcav0BdQSIqeSS6egzFlIsy5eY1r4FpwjVsSfUybJUgi8qzlkdfPKCank=
X-Received: by 2002:a6b:dc07:: with SMTP id s7mr12260098ioc.162.1598440748746; 
	Wed, 26 Aug 2020 04:19:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:b510:0:0:0:0:0 with HTTP; Wed, 26 Aug 2020 04:19:07
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2008252259200.29637@panix1.panix.com>
References: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
	<CAO2sX32zY8fraBaxNamf2f83y4d2F_OBMNVf6ruUKDC_GYi93g@mail.gmail.com>
	<alpine.NEB.2.23.451.2008252259200.29637@panix1.panix.com>
Date: Wed, 26 Aug 2020 16:49:07 +0530
Message-ID: <CAK2wa2mqJK8XBzyn7u-t81XguptkaO=ybuVOkE4Kfwn8ei8AxA@mail.gmail.com>
Subject: Re: tried accessible coconut
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Friend,
Let me know whether you have i installed coconut in a laptop or what.
Again 18 or 20. If you can listen to grub tune, installation may be
correct. In 20 login window is not supported therefore check you reach
the login window. If so enter password and login. Thanking you.
Sathyan.

On 8/26/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> You can make things like that happen with Fedora, and even with a
> monitor connected and operating if a mouse wasn't on the system back in
> redhat 5.0 the system wouldn't work.
>
> On Tue, 25 Aug 2020, Linux for blind general discussion wrote:
>
>> Date: Tue, 25 Aug 2020 18:13:26
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: tried accessible coconut
>>
>> That's odd... I've never used accessible Coconut, and I've really only
>> tried Knoppix and Debian for x86 and Raspbian on the Raspberry Pi when
>> it comes to trying to set a Linux System up with speech, but I've
>> never had an issue with something refusing to boot or a screenreader
>> failing to launch because of no monitor being connected.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
*Mob : +919446012215
FREE SOFTWARE FREE SOCIETY *

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

