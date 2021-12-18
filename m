Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8656479C2D
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 19:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639853481;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BypF2RBBJxup2gSVpjO2fia6hV/FyiJll1BdCngd3mY=;
	b=WvaF4Fg4Hju865lYwQsvoZ5VKjJtQ+RsbPvkdKlyF9qUx6jzOT7D5axQb852LeKuMl72rT
	Yv7igEfkPdtFJDbOjdMjWYFdCKsM6hcdODeu2Jz0evO2AgLNh7i2kGAEXecQs+mFVtrVYs
	Zxm95yQGhYhW5p257cZonuw1bN0cqHw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-vAbSIOc7O16zYq8gOdhHXg-1; Sat, 18 Dec 2021 13:51:18 -0500
X-MC-Unique: vAbSIOc7O16zYq8gOdhHXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F646185302B;
	Sat, 18 Dec 2021 18:51:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75B38101F6D5;
	Sat, 18 Dec 2021 18:51:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5ECDE1809C88;
	Sat, 18 Dec 2021 18:51:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIIoOFV018330 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 13:50:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF871201AC76; Sat, 18 Dec 2021 18:50:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9D14200C0CB
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 18:50:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE56829AB3E3
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 18:50:21 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-675-arysqFhsPya-QI-p8Pou_A-1; Sat, 18 Dec 2021 13:50:20 -0500
X-MC-Unique: arysqFhsPya-QI-p8Pou_A-1
Received: by mail-qt1-f173.google.com with SMTP id t34so6010336qtc.7
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 10:50:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gf529G/GfVpwKbUgTaPB72qakkpEgIH/tqgZYb/6BGA=;
	b=OGWs4LQFB3mOChe2eBhkzViGAYqV4QI7Y3UV8E60DA0vQy3XpVE4J0tkAOhUx0A4/T
	ieIMHPdTcdA0OCGuxwno7zBnvnNHioC+K4AmRgpXnuGDKLSBCKH+zdOIs/QImjRKLu6Q
	F5ji+Yv6p3r+7H2iqCxeHsS+T0Mtw9zhzedsYBOGzRvtm8odakwUnCDAmUIsqgvNa5eE
	QFs+NETFsmtaYMGnjYU/cU4A5qEuoUFqe0U2hdQAHjyGhEGQ7Xtow1rERjFjjzIJqaY3
	AP4YX4BCdjKb63TuEn3FrGHkGom5CWSyQoI0agoNl/wnMX7kBl7TdNstYgCI6E6isekC
	vv6A==
X-Gm-Message-State: AOAM530FU1KtYrUQ3bEC3cwCieie8k7ajRGCurkKblX+V6qB7HiCEES6
	0SaUkurTG0wBy5ym4JJ9y4PDucnbeBY=
X-Google-Smtp-Source: ABdhPJxO5YUfZKV5+CDGcshNeBvCAybx/J8kJ+kJZM79Pksg9CYoCAG9dEyxxSQN72w8I9iJEyNzqQ==
X-Received: by 2002:a05:622a:1386:: with SMTP id
	o6mr7061561qtk.64.1639853419679; 
	Sat, 18 Dec 2021 10:50:19 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	w8sm10399102qtc.36.2021.12.18.10.50.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 18 Dec 2021 10:50:19 -0800 (PST)
Message-ID: <8adb68ed-31fe-14ec-5cd8-c5d7ea57f79a@gmail.com>
Date: Sat, 18 Dec 2021 13:50:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Webmail vs client question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
	<19dcfe1c-4bb8-8e82-61e7-77c0e440097d@gmail.com>
	<f252f316-88eb-c149-52c1-d87623f79cc2@gmail.com>
In-Reply-To: <f252f316-88eb-c149-52c1-d87623f79cc2@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Both Seamonkey and Thunderbird will connect to the server with no 
issues, even when local storage is turned off in your account settings. 
Of course IMAP works best for this, as it has the option of staying 
connected to the server and getting new mail as it arrives rather than 
checking every few minutes, as long as the IMAP server supports this, 
and most do.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

