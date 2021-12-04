Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B87E54686EA
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 19:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638641248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kjwItc0bdz4kfWutrfxFTpTbLWYH6PIZ9nuVCL9nRFo=;
	b=a6lWJQ7g6V97sHzuA8S/mShk5hpraLv+ASs6bmm90Kus5bqnQRE8JTClSren+PurDFGb/I
	tYT4wFjpPdoTL6OllXbScWMhjuX++XrNqr0/Vx/52sny7qU+5XkGm0vfMVmkSWM0EGaTZb
	4pj1c2UldQB5HOEqeZOCCD5EiSAJIHA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-545-zOVpOmYWMwS4Pou3n2AuQg-1; Sat, 04 Dec 2021 13:07:24 -0500
X-MC-Unique: zOVpOmYWMwS4Pou3n2AuQg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD8A02F25;
	Sat,  4 Dec 2021 18:07:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF33319C59;
	Sat,  4 Dec 2021 18:07:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0774C1809CB8;
	Sat,  4 Dec 2021 18:07:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4I7C9M018049 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 13:07:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D50CF40CFD10; Sat,  4 Dec 2021 18:07:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D00E340CFD0B
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:07:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6AE985A5A8
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:07:12 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-253-vGl-nGW6OFSHiY5k4YfAIg-1; Sat, 04 Dec 2021 13:07:11 -0500
X-MC-Unique: vGl-nGW6OFSHiY5k4YfAIg-1
Received: by mail-qt1-f171.google.com with SMTP id o17so6833362qtk.1
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 10:07:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=XbanwP09Z3t/xRcOnW66X6uf5Qr7skrSa19OXTzjpv4=;
	b=meTV/zzMuBW4oOg281zSstTmTDE5qrc3+5XrnRFzgw2fn08blLoaBCDquKArVq8dTc
	8BZib+djDh3jKZwSmjTs4J4/SFU3D3rE4JyukKOsgb6fv0XpPTPajg6vw2DD/61ObM2l
	o0YAxZRWjDEm1x+IRVNzgE+n23y3nicLEpymOGj+nWzWfzIY1FErD1yFDgOG7GAsd9Ye
	PHOMCm/BEU4yIvJTPEOJE6GrLUb+OQ5QlaYH4rxYcXEeb63W1//3o6W+/XM930vwqho8
	iD0rvsoV5Q+bzr1ODrF0cDgkl0pvPDIcNH3C8HBfGh2sbJFC0tiG5yiMiAiE/P4edKUY
	cGjQ==
X-Gm-Message-State: AOAM533xm15SpUJERSJgEBMuVK/f3TH2J6ZMNzWDaNOfNYIzSAorgTV3
	CBSzQ5uRzQuTcyk2612RH4nctziHpo0=
X-Google-Smtp-Source: ABdhPJyBIets38ttb2a1k1xw5kEVFEjVr2vSfaTh0Ft1MVkj5aMg2JiPuUxeX2BgB/oiu7RRi0aKnQ==
X-Received: by 2002:a05:622a:454:: with SMTP id
	o20mr28733513qtx.633.1638641230677; 
	Sat, 04 Dec 2021 10:07:10 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id 9sm4077967qkm.5.2021.12.04.10.07.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 10:07:10 -0800 (PST)
Message-ID: <9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
Date: Sat, 4 Dec 2021 13:07:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
In-Reply-To: <2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I did get pcmanfm-qt to read files and folders, but unfortunately it's 
saying the wrong thing. It read one folder but entered a different one. 
It also pulled in a ton of other seemingly unrelated dependencies here. 
The saddest thing is that I don't think either will ever see another 
update, so from where I'm sitting, neither pcmanfm nor pcmanfm-qt appear 
to be usable.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

