Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 801924687FF
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 23:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638655317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A4jC5lBOpxZw86DPnMbcTe6kDYsLG9/F0bTsZ0+mFIk=;
	b=I4gFVj9MRsGof9pKgFuDz7zoEeLQUX9HSE/GHqw9rG0I3Zze7zlEq1ygRAVaBMlE5/jiK8
	JsWO9VDJTqbL748xhemsKtHvuXOORJDy7qq3eyF18J4CPZvKr9f0NXBnREKz0tTWw8CpQw
	oFczLcEJs3PAXVz/nJNfXVWgrDSPdwc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-gRSeU4uNNJaASHZRbe5ijw-1; Sat, 04 Dec 2021 17:01:54 -0500
X-MC-Unique: gRSeU4uNNJaASHZRbe5ijw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A112C802924;
	Sat,  4 Dec 2021 22:01:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC44B60BE5;
	Sat,  4 Dec 2021 22:01:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E00F4BB7B;
	Sat,  4 Dec 2021 22:01:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4M1FkN000817 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 17:01:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 838A7C15E73; Sat,  4 Dec 2021 22:01:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F60DC15E6F
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 22:01:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6588B85A5A8
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 22:01:15 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-525-j63mr5L-Nb-OKwaGYzKi5A-1; Sat, 04 Dec 2021 17:01:13 -0500
X-MC-Unique: j63mr5L-Nb-OKwaGYzKi5A-1
Received: by mail-wr1-f43.google.com with SMTP id u1so13615354wru.13
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 14:01:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=+HQCIm1SwD1LO+OjqAYduYpU82bogAFVaBfqs0+BB7M=;
	b=AoBRRKTqwTxjlRd7eT650mCQScecipUwUW0dTkDAy08QeWhG0x/kO1wzH76hggzZZs
	KhfInrfKzpD2TcfC0Vk5ThQrVhsF9iMrLsKzTy87IKR7RUrXgWEDF8QTJI2OGq5CHvDX
	6hwyQRvyUAMFqQxwmnvPbGWLzuRq0vwQ0VlmBtyCPBpkCUIHB17fdcIXyGVR5C0nlOEf
	b9n1GNzR2Tv87f1DNcPU+DKX8lva26Gt8B8VV8ckG4QHxRJG3STSdX05btoMYLYOL/Sl
	vg+i4HpDFPnMW9P89YoRJiyT8Z+moKG5B16BGaemM87Y4b+LXeWr1sHzxcNfyqZ7/SOG
	Rkmg==
X-Gm-Message-State: AOAM531+wdd6XCideyT922R30iLk5DzIw2YbgjYsVOeEYjw6QfWFCOr+
	ou/dUA//HR8TW0BV7waR7MLrNB/BExI=
X-Google-Smtp-Source: ABdhPJzBjto7xCGfmo7NJN6DP0h867U8H5x+sdNQJBKCYUx1zMimwBb4vQcY07V+t+P6jqjmna7PAg==
X-Received: by 2002:a5d:58f9:: with SMTP id f25mr31325918wrd.206.1638655272430;
	Sat, 04 Dec 2021 14:01:12 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id
	p14sm8639323wms.29.2021.12.04.14.01.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 14:01:12 -0800 (PST)
Message-ID: <b57eec36-af6b-67e2-604c-ac8435935af0@gmail.com>
Date: Sat, 4 Dec 2021 22:01:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: blinux-list@redhat.com
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
In-Reply-To: <b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

SpaceFM is kind of awesome, it's what I was looking for.

Currently got Leafpad, Seamonkey (but missing an adblocker) and got Spacefm.

Now I need to just poke around the AUR and finish up Ratpoison. It comes 
up talking out of the box without any issues, unlike my Mate hackd and 
dirty setup. Oh and lxterminal too, because Strychnine throws a fit if I 
don't have a terminal emulator though.

On 12/4/21 18:47, Linux for blind general discussion wrote:
> I just found another file manager called spacefm. It appears to be 
> somewhat larger than pcmanfm, but it doesn't have the libfm 
> dependency, so that functionality seems to be integrated into it. I 
> have it reading my files and folders right out of the box. So this one 
> could work. Best of all, it pulls in no dependencies at all from what 
> I can tell. The problem with spacefm is that the latest stable release 
> is in fact quite old, March 2018, so it most likely will never see 
> another update. It does apparently have vfs support, but it doesn't 
> use the usual gvfs back ends. From what I've read of it though, it 
> does seem to be able to do automounting and that sort of thing, as 
> pcmanfm can do.
>
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

