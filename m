Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE4D3D10EA
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 16:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626876757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2PNlZKeIZSE9jl2RHFJgpBp+TCY38LK8DJhuVUqc4mE=;
	b=LhscaZXMvcwDR5VeG38AVo4wAMfXkVilvlRQOWP2s5Snk5tpDgxmv012G/OEq6eOSAJ6Tm
	lk+f79CJmFBMuo2N445dqivURzK9vbtGW/fCAxwUSlZbzI9hvr9bE9iBrLDxD52irpxPif
	h2Kr/2LnhVCF9Fo53hp4v29C46dqt3E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-ZrpHeQ0FM9OuhBeXkSx7TA-1; Wed, 21 Jul 2021 10:12:35 -0400
X-MC-Unique: ZrpHeQ0FM9OuhBeXkSx7TA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD8D41853030;
	Wed, 21 Jul 2021 14:12:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59D6D19C79;
	Wed, 21 Jul 2021 14:12:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF0A9181A1F3;
	Wed, 21 Jul 2021 14:12:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LECPkG003618 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 10:12:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9E07FEAFA5; Wed, 21 Jul 2021 14:12:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96DDBF5AF9
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 14:12:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1A31101A529
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 14:12:20 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-152-DYbjmwJ_NQGCRn21FO8WUA-1; Wed, 21 Jul 2021 10:12:18 -0400
X-MC-Unique: DYbjmwJ_NQGCRn21FO8WUA-1
Received: by mail-qv1-f45.google.com with SMTP id p10so974440qvk.7
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 07:12:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tSLz1EyruczvrA/Vud617P5NgI0gxvL6iMvPBTEdLr0=;
	b=Kb4/6vTonz8OOrTNoVlYZpM+opLEpeUnEW+/iEsVp52QmF4INDdO8BSZqVzCqj1ZXT
	XHf5pC3wqEbmFg+Xfq5r64f03Vf09QLbmz96f0EUkH+3dcsjIVJLvrlwMgX+x/53t7Sl
	Qqv5EPInD4MPZNIQ46eFeULoG+rjNt49bS+oBx2ks2sUh5P+JurpVT4bLrrt04sz7+wb
	79nXqxa7eAsb53IKDw4pl44Ql0kwarn6b1Iak0UmQNvI0IDJWoe5YCbkgnqiEUvG4vHY
	E3NNms0f+3CQplOijLC4AeMbx0PqU+2FiOqUlhfFwCIDh59qwX/2kUpL/xr/9tQofEYq
	tSDw==
X-Gm-Message-State: AOAM530hT5EbhrubhafnklqHuEurwTeUYFjdy09i1jcbzK+TnnrO7lrD
	xzyWW4+nyfG7/qeWs9FXiwQJxOwfC5M=
X-Google-Smtp-Source: ABdhPJyzoKYkPvzMfKlgLltNOwyL0tItIu6+IylQi6HQu61ftyI7+OaQiwJo5gH+3QZwHnWc6nrcow==
X-Received: by 2002:a05:6214:529e:: with SMTP id
	kj30mr36673251qvb.32.1626876738020; 
	Wed, 21 Jul 2021 07:12:18 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	z6sm11102145qke.24.2021.07.21.07.12.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 07:12:17 -0700 (PDT)
Subject: Re: Twitter, again
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
	<alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
	<alpine.DEB.2.11.2107211620400.7560@debian.work>
Message-ID: <e267106f-c3e5-e5e9-e882-e97510f9a6c0@gmail.com>
Date: Wed, 21 Jul 2021 10:12:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.2107211620400.7560@debian.work>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

There was once a package called corebird that worked pretty well. I 
think the cawbird fork is what works now.

https://ibboard.co.uk/cawbird/

I can't speak to how well it works with Orca, since I generally use the 
website for tweeting and following specific accounts and the twitter app 
on my phone to get notifications and review tweets, but last time I used 
corebird it worked pretty well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

