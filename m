Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B0B06D8
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2019 04:42:56 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3194F3023080;
	Thu, 12 Sep 2019 02:42:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A3B960C57;
	Thu, 12 Sep 2019 02:42:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A21852551C;
	Thu, 12 Sep 2019 02:42:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8C2gM8S005910 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Sep 2019 22:42:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1FBC55C22C; Thu, 12 Sep 2019 02:42:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx02.extmail.prod.ext.phx2.redhat.com
	[10.5.110.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A5645C207
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 02:42:19 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E4DA486662
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 02:42:18 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id 4so22998868qki.6
	for <blinux-list@redhat.com>; Wed, 11 Sep 2019 19:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=00DVch0QKO53d0aqFGJXaaG7vabV5KGECsG+AE2M90Q=;
	b=WS0bjVkAbDHzjx3JWi1rS4B9CEWf7/fs4YVEBkRRlXPClE2sKcXf1OPuxADX5x7Nzf
	yXhVdihqmqNGPCBcxgVNUxE39e2tCWrBmond0zEukPFtvbjK86hXRGw1/yMJ7/q3hUUR
	01K9Mxe4jLx2dDfdnRDRGw4iSuIZzytJwJ0MJ7fXYi/Qobcgr9sYLYfj8yIlFmWBg/O2
	acdnOeHNAsXCRI6ba5TH93kOaS21K8P2nfTfoMDI2jz1QGQcm99M7jKUHNi7zvzRNdDH
	4CPfn9gJoOLTpuT+i2H2fwSUn2OCYzkaiFYu6ZS+vkVahs+ThnG7Dj4K7RgKLpKdyVjf
	WeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=00DVch0QKO53d0aqFGJXaaG7vabV5KGECsG+AE2M90Q=;
	b=RYd3LKaiQu6KOaln3XvjmRzQ554rP9VB6HiCvO1H5sp50RAbGeeElWIj/JM0nWfR+o
	iU6uKDHFazXLP76D/eKbi0Fk7BBG8OglQSd06skLTE5UvoxxMY0GlwEpqxaYjqnTrvGO
	dtGojyQvp7UYfWKUjGbufYNQEAX0swoQYkyAhmAfMHg4pYS3H+ovovvgwvOVdqWxD4tf
	40ZTatKKc7A3JaIccfycRvHHjju/Ngoqz3NS30vo+0L54cgAT5UgOD6U7wFZYyuNcwu0
	O46672lQB0anyAofESVF2JcyEFoEuYZAwVrIXM9Y6z1jODmUgE/+1mkImu7Bfs6/fwre
	WI/g==
X-Gm-Message-State: APjAAAV84pg7GpeycYY469xiHyDg9cPa3LHi1sBIiuPQcZjSjbEjiPYh
	QRYKmZvQH68n9QFYapRKmaq+pyvH6jk=
X-Google-Smtp-Source: APXvYqyvafux93cWMSY4jnJgE2OqjGDNARCp4Q0HFYpSPNXAy+uDP7vpaB8RTVPbeTj/s3IjL+DRZA==
X-Received: by 2002:a37:bec1:: with SMTP id
	o184mr38994944qkf.479.1568256137858; 
	Wed, 11 Sep 2019 19:42:17 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-8591-0-0-0-939.dyn6.twc.com.
	[2606:a000:111a:8591::939]) by smtp.gmail.com with ESMTPSA id
	n65sm10638537qkb.19.2019.09.11.19.42.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 11 Sep 2019 19:42:17 -0700 (PDT)
Subject: Re: Comunicating from your Linux machine?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
	<87zhja4b8g.fsf@gmail.com>
Message-ID: <ba434a94-0e7b-633c-9a1e-9586f6aa8cd2@gmail.com>
Date: Wed, 11 Sep 2019 22:42:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87zhja4b8g.fsf@gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.26]);
	Thu, 12 Sep 2019 02:42:19 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]);
	Thu, 12 Sep 2019 02:42:19 +0000 (UTC) for IP:'209.85.222.177'
	DOMAIN:'mail-qk1-f177.google.com'
	HELO:'mail-qk1-f177.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.222.177 mail-qk1-f177.google.com 209.85.222.177
	mail-qk1-f177.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.26
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Thu, 12 Sep 2019 02:42:54 +0000 (UTC)

> Telegram works fine here using emacs +emacspeak.
>
> Is there a specialized client you run to make that work, or can it run 
> in a regular terminal? The Telegram app I saw was a graphical app, but 
> I think I don't have something set properly, although I assume it's a 
> qt5 app, and I had Mumble qt5 working. I would prefer something that 
> interfaces with Pidgin, so I stick to the phone for Telegram, as I 
> just didn't look hard enough to find a Pidgin plugin, and Pidgin here 
> seems to have trouble with voice. That said, looking for telegram 
> didn't yield a Pidgin plugin, although I do recall seeing a text 
> client, though it seems it was separate from the "official" (air 
> quotes there) client.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
