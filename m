Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCE824E982
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 21:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598126133;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cpOtJFajr1cPKDFwg4qpLlnsDPK7Q5ogkR23DtgeaoQ=;
	b=VqRXJwSjNu0+V3JSseoQOaI1gR9OMznP5yRAGjYWWvLtrUxQjvi1GjKkSZSUsmRTo866kL
	dBERsbClJEHbvMOkT3/U51BRVbMm/J76PlkCOJNBlQvaghh2/OdBBNZFodGTgusL1DVdby
	fyqU7wZqgBta/UyXmfulojQsKNi1oEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-lTOCv5IyOkS6zl6GF8fkug-1; Sat, 22 Aug 2020 15:55:15 -0400
X-MC-Unique: lTOCv5IyOkS6zl6GF8fkug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4393F81F001;
	Sat, 22 Aug 2020 19:55:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 085697E573;
	Sat, 22 Aug 2020 19:55:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26AD01832FC2;
	Sat, 22 Aug 2020 19:55:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MJt6X7005377 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 15:55:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5CA04B301B; Sat, 22 Aug 2020 19:55:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5821EB3005
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:55:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0693D8EB556
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:55:04 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-71-RZVxDWyKP5uO5PcVUwlITw-1; Sat, 22 Aug 2020 15:55:01 -0400
X-MC-Unique: RZVxDWyKP5uO5PcVUwlITw-1
Received: by mail-wr1-f66.google.com with SMTP id y3so4965682wrl.4
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 12:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=n8uHIo9Ft3ntWkt/fhnrhcv+Im53Orp/xUT97QhahCw=;
	b=UQOYoXoGE1sKYLYaAYeFiZLxsjs/VyFijgKVr1KBzAYQEPZq6xrxAgOjBkYoEe++Lf
	reO7tYb+pPdMwLLF88aM2397K0AHp3fGuS06IYH/4fjolgEbWQh7na0HoCO9ueAR67Ip
	eQK1nqnsSWMLqFZ4hvPv8stXXT4pPrszJ/88e/iZDiE2ivyM7PXC/0mYJX4Md+nkg2jc
	FSeq9lE2WqATC1to6yH/lRdkDkmgM+EF8SYvPeG+AybF43OfdhTnUfFrsvK9PxPqwsY8
	+utwipKqFu/nPjaOWTaBJYW/W6GMta4LRwwhYwm//A/5kFIgDoyniGAQeHHaHakRU/xl
	oJ4w==
X-Gm-Message-State: AOAM531Kphvlt6KWifdplOayF4Wha4P3Vgj97whZOZoX7+fxIY4pQZZt
	xrPmIqCm0OYFhrzWJ34shSQqOeQSS2go6g==
X-Google-Smtp-Source: ABdhPJxlx7vZwaIlJprsZZtFbWlH6IiPLTHpbwqTN2BC9qChrl4BCxIoAFeCErN+mQbu1vzLIoRNpA==
X-Received: by 2002:a5d:6a8d:: with SMTP id s13mr8727172wru.201.1598126100318; 
	Sat, 22 Aug 2020 12:55:00 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	o2sm12286012wrj.21.2020.08.22.12.54.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 22 Aug 2020 12:54:59 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
Message-ID: <84912de8-c295-2f6f-632b-db2758036b33@gmail.com>
Date: Sat, 22 Aug 2020 15:54:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MFMbMot--3-2@tutanota.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

would it be possible to connect the Pi to a braille display?
> I am fine with speech, but it would be nice to be able to connect a braille display if I want to.


Stormux comes with brltty braille display software. It is also one of 
very few Linux distributions that ships with RHVoice in the default 
installation, which sounds really good for the speech side of things.


> Also, Stormux says it comes with MATE as a graphical desktop which I think is great, seeing as I am coming from the Windows environment. I am just wondering if Stormux will run things like Firefox for a browser?
> I ask this because I don't want to use Chromium or Chrome or anything remotely google related. Although I know Chromium is open source, I still much prefer Firefox or a Firefox fork.


The latest stormux image ships with Chromium by default, but Firefox is 
available, and can be installed fairly easily. There are a couple of 
light browsers available as well, but these tend to have some issues. 
Firefox is your best choice, and will run with no issues on the 
Raspberry Pi 4.


> Also, can I run LibreOffice on it?
> If it can't run Firefox and LibreOffice then I might decide to go for Slint or Debian on a laptop.
> But that would be nice if it would run those programs as it seems like an interesting option for a beginner who is really unfamiliar with Linux setups.


The latest Stormux download ships with libreoffice-still, which is the 
stable version. Libreoffice-fresh can also be installed, but still isn't 
far behind, and bugs get fixed and issues get resolved once the still 
version is released.


Any questions, Stormux has an email list you can join from groups.io. 
It's just called stormux, and you can subscribe by sending a blank email 
to stormux+subscribe@groups.io. There is also a Telegram group at

http://t.me/stormux_chat

> and the IRC channel #stormux on chat.freenode.net.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

