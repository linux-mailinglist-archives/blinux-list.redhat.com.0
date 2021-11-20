Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C04074580D7
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 23:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637448598;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=63Ka4hEJptk7WBNmAulK2hnn9EGhebkkV8byPwSv6iI=;
	b=P7IncnraveBotzMxZMSHuA8RHv2oJsZ9F0ww16D57hBQ6bv4S/Lih6gn7nEryqMD59/9QX
	RBr9LnVKrMj8Vwiq2rFqToNKxOG6/wxSKhZuhDz2vBuTtRah6Ur03ZN4hBJrojli91BIYC
	V6imY1wn8YwcNoHsPPueB5swPL7kwes=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-AwV5RTZgMvWZPdVFbDnshA-1; Sat, 20 Nov 2021 17:49:55 -0500
X-MC-Unique: AwV5RTZgMvWZPdVFbDnshA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 913DE18125C1;
	Sat, 20 Nov 2021 22:49:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EF835D9DE;
	Sat, 20 Nov 2021 22:49:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 04D3F4A703;
	Sat, 20 Nov 2021 22:49:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKMnaj9000413 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 17:49:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DC5E2026D5D; Sat, 20 Nov 2021 22:49:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 490132026D48
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 22:49:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C11A803D50
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 22:49:33 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-498-hp-La1nYM_603aw1kwvRkQ-1; Sat, 20 Nov 2021 17:49:31 -0500
X-MC-Unique: hp-La1nYM_603aw1kwvRkQ-1
Received: by mail-qk1-f174.google.com with SMTP id g28so14015103qkk.9
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 14:49:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=mj36dVoVK57CEUyud2p3eOaHUW1C21AUljj1ql8BRaY=;
	b=IecB07fOhvL/RkMBYh/Bw+8tavbIcVO3aVe/cV3REShpg7qo/V0vQLaVV2p6TE2r+e
	BcH98P+/au92JKXA0y3bo5xuCqD5zRrZu3qTI1QiZMrE40csfYQOBe5afM/OYPNg3CVF
	IDOIolu4yMBueTKLMSpMuru6gNJK+mfAPdVdnXtbHW63SdDW0KHhOChZuMNupgATTIsJ
	VAmhOJhFPsu5MHq3m8YTJAxbSBLZeOAyee57hcf+7+Iot2cnfM6NyEEUPT6N90pfXnSv
	UXIuOsVJVhVYnwDCuLNaGKjRWBQB0PypfCFenZoIe1uCyrtTwPgRc4/0wvyzbUOKzUN+
	shfQ==
X-Gm-Message-State: AOAM530KijAZluhMaSKns3aNyKMGiBa/ydQmZgZDFb3n1skiPKtK35LO
	vQJaImHdDa5IpHOzlOi57bMEJ6wfEtoGJXoYA6DjORCr
X-Google-Smtp-Source: ABdhPJxsHkYiiUIM63QJSmpOKufH/T+sTW1ZxpW8doQl9MikAeWYkr0elCvFOKkqEb1v+/SXSEpuceIHRUalH9lMDf4=
X-Received: by 2002:a05:620a:c50:: with SMTP id
	u16mr37128540qki.203.1637448571127; 
	Sat, 20 Nov 2021 14:49:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Sat, 20 Nov 2021 14:49:30
	-0800 (PST)
In-Reply-To: <daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
References: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
	<daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
Date: Sat, 20 Nov 2021 22:49:30 +0000
Message-ID: <CAO2sX317-rFXjdKJ526w-5Kz6WYey3vO=DWgh=iKER3eqciPEg@mail.gmail.com>
Subject: Re: Ideal temperature
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Bit off topic, but Travis's comment about crazy overclocking reminded
me of something from the Pentium 4 days:

If memory serves, in those days, the fastest Pentiums ran at 3.6 GHz
and there were people trying to overclock to 5Ghz, but even pouring
liquid nitrogen directly on the chip, they only got somewhere in the 4
GHz range before things started overheating. Admittedly, I'm pretty
sure ARM chips produce much less heat than Pentiums, but really, the
only reason CPUs can't do double duty as space heaters is because a
single CPU is too small.

That said, 34 degrees C might be the lowest CPU temp I've ever heard
of, I'm use to systems being at least 40C even when idling... even
when the room is cold.

Still, 40 below is crazy cold and I suspect most people are going to
have much bigger cold-related problems on their hands(such as not
dying of hypothermia) long before their Raspberry Pi gets too cold to
work properly.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

