Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF38D468A48
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 10:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638698112;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bg/25dAeRVRZSsNZVq1fKjYXq8UyFJyW4U3PH4PtjT4=;
	b=YRgcy1OP4p1B6zYxqqLJx635lcHKs0YwKzEJYao2uUVodkn5a+8sNzgoRnQJfcUYjLU0mw
	bQgXJQBkdT8pDTwgQdYnVyYzVyaHCy3w9swn0bXRKwyxZp529rKACaoSyQNDaYxiT86Znh
	7oHL5JHrBALYaaYTLBthZz4OvLrDMC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-467-rpPEubdSNWKw65_7jcdDnQ-1; Sun, 05 Dec 2021 04:55:09 -0500
X-MC-Unique: rpPEubdSNWKw65_7jcdDnQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E01E1853022;
	Sun,  5 Dec 2021 09:55:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B27445D61;
	Sun,  5 Dec 2021 09:54:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 797C318095C9;
	Sun,  5 Dec 2021 09:54:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B59sYZa014489 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 04:54:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7463451E3; Sun,  5 Dec 2021 09:54:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EDA051E2
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 09:54:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84B9685A5A8
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 09:54:31 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-126-HNPqTm6cN_ya3d0Rl2j0Vg-1; Sun, 05 Dec 2021 04:54:28 -0500
X-MC-Unique: HNPqTm6cN_ya3d0Rl2j0Vg-1
Received: by mail-wr1-f41.google.com with SMTP id d24so15955207wra.0
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 01:54:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=mLQwXI9gnYtNiYFmvK9081L2qRb5JNrtA4dzOmcubiU=;
	b=A5rotN/+d9P7Azx3oA3TkSeUzevecG3Y+h2QLqy8rpCuG0eLv5K3CY8cM8Jpc3b74u
	+s+qDM7GXAZbKKS7IYdH5RJ+jv4ZzZC+uM7+dqs+6CEiioxtaosWm3xiCQ5pIT4W5hhC
	BRZ+z7D/hXUM3wnb6Bv9PLSh1WmtOkN2TVsqnbsuCFgqGuTwtSH1hyaGc8yk3FtID1XX
	IDLsrljzJrCm44YFwcE2nZbda6wmKiPyzlDnI4ScNnr7njwmj1PJ7itEM0R6n4hyEEhC
	K8Db3VLGwo5avfK6U4/GuqUWf8+eyP/GRRcQCrhy62b3qhLoNh3OpwGOV5CpyfP9Rd/g
	nj3Q==
X-Gm-Message-State: AOAM530UwJ34NVNvueyePU1ZI3oOy59eKN4t8UOSfeLOqvLsdmmCk5rR
	MnbzfpvQaWfpOeA9PJOyNLzidjs3FshfAQ==
X-Google-Smtp-Source: ABdhPJy4ug8CkXEK3vUG8VzHBQ6G8r5a6RSPWg6Y+Rc97XrDIBGD2ax5iyhUH+5XMgAGlAPKNs4Xog==
X-Received: by 2002:adf:b1cc:: with SMTP id r12mr34692630wra.217.1638698067412;
	Sun, 05 Dec 2021 01:54:27 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id d1sm7476150wrz.92.2021.12.05.01.54.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 01:54:26 -0800 (PST)
Message-ID: <47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
Date: Sun, 5 Dec 2021 09:54:50 +0000
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

SpaceFM works very, very well for me here and is (to me at least) easier 
to understand and work with than Caja personally. I'm now on the hunt 
for a lightweight browser, I'm thinking stick with Seamonkey but...

Setting up my gmail is a pain really...

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

