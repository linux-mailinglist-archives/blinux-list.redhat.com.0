Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A31146870C
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 19:26:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638642361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Txt6z3rbS9HeT2Vj+3siFoaQfUSEeM761FMMa5js2Ww=;
	b=L2pJ9NKH1U+ktaPv/maD+UA6zve3vZdqH0MvLfQ9sgSGddpY7hktSxD/7Y8uup9wGG1rNf
	3WBiVujUHKSfq7/2nDJQp7EP6tOM2uWimWFDkj+Lrne13UK1aBm86cg0vf082Ydz+tze4+
	Rc+TJvi7ikKXA95UzQEfKc+pfpHBklY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-354-fUuJ1bVxOjOIoAxF2U0-JA-1; Sat, 04 Dec 2021 13:25:57 -0500
X-MC-Unique: fUuJ1bVxOjOIoAxF2U0-JA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17DB88042E1;
	Sat,  4 Dec 2021 18:25:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4757A604CC;
	Sat,  4 Dec 2021 18:25:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A8994BB7C;
	Sat,  4 Dec 2021 18:25:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4IPaq6018854 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 13:25:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7BB0A4047279; Sat,  4 Dec 2021 18:25:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 779054047272
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:25:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F5D580122B
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:25:36 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-573-o8f-o4wlPNqhQ1fWFXh-cQ-1; Sat, 04 Dec 2021 13:25:34 -0500
X-MC-Unique: o8f-o4wlPNqhQ1fWFXh-cQ-1
Received: by mail-qt1-f180.google.com with SMTP id p19so6783399qtw.12
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 10:25:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=mAYPsGRBW6HpIQ9T4vCI82hoUGCJR8+XXTD58n9Onx0=;
	b=tggQ9dxU9JcebcqJjYOjx8tLM6swrbJVo1J4pnsFAuQuJBA3+qo5X2pdNoccTGWFW4
	CBaTXvpKhHI3iEsSNB7DPn9LEVfXJnMZIjyfrUPoY5aXBv0HRAVChpbiPKshlafD51LM
	gec2mFTKcM4VbcOHxfIKFG4SxGtwcExxLfzSNSFUSbC+PAyWauN7FOvaSZzysFF+rgNx
	Q6tSDV8Em8WdeiPOSUtzK5l2kBWA16YHkR4gMqHQIqkpz0cWOkllMrJtJhV1Y2oKh1Lx
	dN9hJkXdRxL8lZKo9bxemxBswaHs+pEMLsWBh4kBsqfo0ovvzDoelKZFSnwLR9TvoRNC
	2yJA==
X-Gm-Message-State: AOAM5336R4UI9ufPDV7/TvrTEmoSj3GT2fXj+7jgpqiTprZeXVH4nxtE
	FB+u4bILKTv4W6clD8WLrbyaJfeka/k=
X-Google-Smtp-Source: ABdhPJw6nIIZnt2YyayOIfp+ZlwLx76/Is6CGuv2ba6HqPQUDPilgyK9qcsmpYaQ1vPKcIvFtI8kWQ==
X-Received: by 2002:ac8:5bca:: with SMTP id b10mr28760825qtb.170.1638642334044;
	Sat, 04 Dec 2021 10:25:34 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bp18sm4366715qkb.39.2021.12.04.10.25.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 10:25:33 -0800 (PST)
Message-ID: <02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
Date: Sat, 4 Dec 2021 13:25:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
In-Reply-To: <9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

I did find that the latest stable release of pcmanfm isn't as old as it 
appeared to be, as I see that the latest stable release was in February 
2021. I still can't figure out how to make Orca see my files and folders 
though.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

