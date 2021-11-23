Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D20E45AFDD
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 00:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637709200;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MKxY089EXdraTvOO0B4wMcytDVQywVWBZLBbf3Ajn1k=;
	b=FKzWRPA/ZPN2SZ9MuHrN+z/padDObJz1oV5U6/VnTgaTaNMJLSgqz1+1vbPluA9TCAIvWt
	6D+fohBHdaVNIFNqC7X9vfFiIaomhNjQff+pshBPJZ5JnyreJrbH1h1TxbuuOSaNpMdRg3
	ZdUz5xt7dHQ0Om8+maQQm/C7nbZkG7Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-kyf4VGhrOh-dnX3vjlVhvg-1; Tue, 23 Nov 2021 18:13:17 -0500
X-MC-Unique: kyf4VGhrOh-dnX3vjlVhvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A864B1023F4D;
	Tue, 23 Nov 2021 23:13:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66A5360862;
	Tue, 23 Nov 2021 23:13:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 182B14E590;
	Tue, 23 Nov 2021 23:13:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANNCs8I027160 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 18:12:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3B43351E3; Tue, 23 Nov 2021 23:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 355CC51E2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 23:12:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41504185A7B2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 23:12:51 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-543-2RoPyTyGPEKOoEq5XfVAPw-1; Tue, 23 Nov 2021 18:12:49 -0500
X-MC-Unique: 2RoPyTyGPEKOoEq5XfVAPw-1
Received: by mail-qv1-f49.google.com with SMTP id a24so421701qvb.5
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 15:12:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=QDiYnqO6jZMONs7nb8cHv/YiEqOY/h5vSDV54xCqQg0=;
	b=YvpbK6CNMB0CiUMzmqG1S8VY4c5GT3yBhcV9JLHPzxkovFce+mEXxZvNjbh4+6wtsX
	uqdYE2Ydm6+npC9dds/cgfufQBpkObMX/7DqWYkslHdn1Sur2qsXz8sg7KgmZfJP3H83
	+RZUonrrgb5n/IdxxACx703oI9P+QCvfkq3sKbIqIicP8FEcVoThoThfE9EKCvt8ng/W
	viQqdu/D6VC4lUbYnOA5mQ2IgTvKQHdfB+LkYf401HXa/Z7+3yhL7rdhWRlGdxqgNjFN
	FMKesrPutAcUbz/m7bKsTlOWYfu4VW1Cjly7B3lJLDxQoam7b3RVM57Tl9IBBCumMRHO
	xrpw==
X-Gm-Message-State: AOAM532DMjM5uw/7P0c7e1tOOnws+wDJH2Tch5vDSZGySQc6jyKKn2S9
	wdjFSufW9MKsy1SIiIIGrPJ0Hb77JK0=
X-Google-Smtp-Source: ABdhPJyrZErXajDK7HymHX8kxmxMGrbI8NYHqFDWlDT3boZcXBnuLmlfgbljwRDaDOGKp7ICsgQpDg==
X-Received: by 2002:a05:6214:21ae:: with SMTP id
	t14mr1173421qvc.66.1637709169024; 
	Tue, 23 Nov 2021 15:12:49 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bm35sm7132477qkb.86.2021.11.23.15.12.48 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 15:12:48 -0800 (PST)
Subject: Re: Can I upgrade Coconut to Mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
	<CAO2sX31T8cTcUHZL08o0Tr-oaqZr-=ZhNZCjUvpLo0jz3dyWeg@mail.gmail.com>
	<baaffc90-b378-fac2-6f71-595d57783f41@gmail.com>
	<alpine.NEB.2.23.451.2111231715590.29239@panix1.panix.com>
Message-ID: <966062f4-af7e-628b-a28b-f0b28cb31aef@gmail.com>
Date: Tue, 23 Nov 2021 18:12:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111231715590.29239@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have installed many different distributions and versions of linux over the
> years and gentoo has been the most difficult of all of them.

Yeah Gentoo is the only Linux I truly can say I gave up on and actually couldn't 
get installed and working, even on a vm. Well, LFS would probably be far more 
difficult, but I never even thought to give that a try, especially since I 
couldn't get Gentoo working. As an aside, apparently Gentoo's lead developer 
left Gentoo to start Funtoo, but that's just as difficult to get installed and 
running.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

