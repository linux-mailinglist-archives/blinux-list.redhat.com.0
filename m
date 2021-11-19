Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D45745683C
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 03:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637289457;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9M99g4B59ex3lo9sJpN7iQnhDDpHMsETEM5Pmz3mux0=;
	b=RQQwVAFbxt7W9mlCJZznnkkOBwEp/ryQWfqHr9aJYZHeVSe6NFCZyXNXp8+sTK2ScHr3NZ
	WQDCXrGETJef6qT7E2jCbhg8IJZ4gs3FGMyLwHdZynEqUxQR2MOolqypLy6AvfwxKzA/2J
	nX7RuocO103IgRg51+jK9KyGW0/aWP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-358-tPfaBJPwPh6afhXJcntnRQ-1; Thu, 18 Nov 2021 21:37:34 -0500
X-MC-Unique: tPfaBJPwPh6afhXJcntnRQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F4D080414B;
	Fri, 19 Nov 2021 02:37:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87B9D5C1D5;
	Fri, 19 Nov 2021 02:37:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A3E34A702;
	Fri, 19 Nov 2021 02:37:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ2bOED021424 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 21:37:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EB47E1121315; Fri, 19 Nov 2021 02:37:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6C071121314
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 02:37:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8B73185A7B2
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 02:37:20 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-412-3svxMe-sMcm2bGruDwWnpQ-1; Thu, 18 Nov 2021 21:37:18 -0500
X-MC-Unique: 3svxMe-sMcm2bGruDwWnpQ-1
Received: by mail-qv1-f50.google.com with SMTP id bu11so6197598qvb.0
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 18:37:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=D7N7Bq86aqo15JIfUOhwKQzH6n2/UZw4Bl+DtqpOW4Y=;
	b=5D7VKgBAB1v5/XmuiaLiRybpdAkgtPJoPCz38ml6FIWJULU9siJmJ2M7lVoLBAxeNR
	TbE6ner3va/0GITv/k82bnN4Wx/oo1AgcQJ+wYYdk8rQCdbNO7rLh6dvU0oY1A4iubTT
	Jr+QjRHvyQPkqnDGGMBIxriX+gt5jwL0ZaY5xDVwVBtph3mCW381BtpXsirrX/Zdls5Z
	m7KHIaoFskmjBJ2LnyelAXy+4K46NpVZx3XFsiPEKlFAgE15mw3/azCihWFcKsNHJ+XJ
	JlqHxWh3fni2q9EtoFiCveDuXXdkGWX99ZQmsxBSWtRey/swT3pTQ+wUaq8xD4mYvlVq
	ODKg==
X-Gm-Message-State: AOAM5302sEtnPlM2MhyYLRabEds5dcibn89PqYH+4rw4ou5NFZeYXPay
	TR/VwMtSNiT0WEWLOK2seOgxTbAaThk=
X-Google-Smtp-Source: ABdhPJxL+VGQAHtL8g7b5RLOBsPmeZ7o7kIlUOhFd7MVpGaqtxfQ7KPk0QgwP6n+XW9oRWkIZwyVaA==
X-Received: by 2002:a05:6214:194e:: with SMTP id
	q14mr70309466qvk.0.1637289438335; 
	Thu, 18 Nov 2021 18:37:18 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id y9sm986783qko.74.2021.11.18.18.37.17
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 18:37:18 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
	<5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
Message-ID: <fb7296f8-21a9-c6a8-3ac3-43ca70546485@gmail.com>
Date: Thu, 18 Nov 2021 21:37:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Did you logout or reboot your computer after you added yourself to the brlapi 
group? If not, that may explain why braille doesn't work. Once you reboot, it's 
supposed to work as soon as /etc/brlapi.key can be read by your user.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

