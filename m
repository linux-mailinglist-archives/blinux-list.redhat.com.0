Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 333342584B0
	for <lists+blinux-list@lfdr.de>; Tue,  1 Sep 2020 02:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598919307;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cqIuje/ISm09pw6G/EXuwQJj5LagvcJs607oWCm1RqU=;
	b=czkOkKpxIRr+WhhJUqkJ0PF4LqmENC5a9i5zZsngqE9CmbanWR+XCbhxAU8Z2hX6c4uqzY
	O2EAW+AOV/ACvwZabKteqT/xDJGBQIi8MWLI2pWy45VgzEL/mb6LuDwQeZJdGxIC34xkJs
	R7q6uvUqcVAL2qTuaE7SykblUMtdy2o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-lsKbSmxiPLahq1cRlYPAMg-1; Mon, 31 Aug 2020 20:15:04 -0400
X-MC-Unique: lsKbSmxiPLahq1cRlYPAMg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1D02427C0;
	Tue,  1 Sep 2020 00:14:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA62178B20;
	Tue,  1 Sep 2020 00:14:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6653718A0C23;
	Tue,  1 Sep 2020 00:14:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0810Eh0s008217 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Aug 2020 20:14:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9085F2166B28; Tue,  1 Sep 2020 00:14:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BC442166BA2
	for <blinux-list@redhat.com>; Tue,  1 Sep 2020 00:14:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 513BB101A568
	for <blinux-list@redhat.com>; Tue,  1 Sep 2020 00:14:41 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-294-cVIkl60mMc2gKDMrTAa-hA-1; Mon, 31 Aug 2020 20:14:38 -0400
X-MC-Unique: cVIkl60mMc2gKDMrTAa-hA-1
Received: by mail-io1-f54.google.com with SMTP id g13so7941528ioo.9
	for <blinux-list@redhat.com>; Mon, 31 Aug 2020 17:14:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=jyWM5PPwb+Vaiceff3DN/ajfFugncdCDcRyRxz1l9xs=;
	b=JDuu8ldfYHASkYkDjOyGzbszzZHjRKMYhdjzTTWfOQbB52Q15xSAYVCI1y5d49lIwH
	RLXexiF+W35MtQp4IOTpXQdyfU/AOcufKhYS2/ROBT+Zh+wMfNr2wQeSuB7jGb8yVqtM
	qCacxXcmO//ddvNkEAHVCg/FbOTOrL7AVf7z6Fi83xt4rcvJM/dQ67xplU9OSjQ9cmMV
	1pRR4clK4IK/YulHvDkqlyTexmRbllpwwOa+4XRG/cYr9eBU5swQTSYhdXBtc4m99Z/W
	s0vP2Q0HP1NiLtibekH/Tx3P0MFqDiaTgur6BLBgYE3naw8sD2StgG76fDzDEyOU8Axl
	pb7Q==
X-Gm-Message-State: AOAM532y5Ycu3Y+7livsKz9+ziPE8oXuoV9fLcZqEoaEfjFC50uhlW78
	bX7FGHKeyfWWp+8ScGp803SMwZvRvOymrQ==
X-Google-Smtp-Source: ABdhPJzt2mWkJoZ4MBxMeCSfA9tlUfrCq082jEEarOWnzQ1O3rZpl/00d+a8oAfTHTMlR2dj/XNAQA==
X-Received: by 2002:a6b:c997:: with SMTP id z145mr3411473iof.136.1598919277794;
	Mon, 31 Aug 2020 17:14:37 -0700 (PDT)
Received: from ?IPv6:2601:249:c000:3ca0:2dc7:1e9b:1df2:2ace?
	([2601:249:c000:3ca0:2dc7:1e9b:1df2:2ace])
	by smtp.gmail.com with ESMTPSA id
	d10sm5241545ilr.68.2020.08.31.17.14.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 31 Aug 2020 17:14:37 -0700 (PDT)
Subject: Re: FYI: PinePhone community edition for Manjaro
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
Message-ID: <6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
Date: Mon, 31 Aug 2020 20:14:35 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
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
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

What does the os look like does it have swiping jesters or how is the setup?

On 31-Aug-20 11:40, Linux for blind general discussion wrote:
> The Pine64 folks have just announced another "community edition" of the PinePhone, this time pre-loaded with Manjaro (https://en.wikipedia.org/wiki/Manjaro).  According to Wikipedia:
>
>> Manjaro is a free and open-source Linux distribution based on the Arch Linux operating system.  Manjaro has a focus on user friendliness and accessibility, and the system itself is designed to work fully "straight out of the box" with its variety of pre-installed software.  It features a rolling release update model and uses Pacman as its package manager.
> For $200, you get (eventually) a phone with 3 GB of RAM, 32 GB of storage, and a pre-loaded copy of Manjaro.  It also comes with a "dock" which should make it more convenient for use as a general purpose computer.
>
> Once you have the phone, you can swap in a different microSD card containing any of about a dozen operating systems (e.g., Mobian, postmarketOS).  So, if you're interested in playing with a Linux-based cell phone, this is the hot setup.
>
> PinePhone Manjaro Community Edition
> https://www.pine64.org/2020/08/31/pinephone-manjaro-community-edition/
>
> In closing, a word of warning about the Pine64 sales model.  Basically, they announce a product, accept pre-orders, and then do a production run.  So, the product may not arrive until a few months later.  (I'm scheduled to receive my postmarketOS PinePhone shortly; I ordered it back in mid-July.)
>
> - Rich Morin (rdm@cfcl.com)
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

