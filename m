Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE9746DBCB
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 20:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638990448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bAPbu+2gmG+aR6gJD3tTuWaltzh+y5EmDWDxf6vpFEM=;
	b=OIoh+eoqg6LCFBigg9o5pNBNWpSelCLiyno1SEV9kvLYgEhKd9XOCNWad33yD8IbAfqMFj
	R826YrpGWuDdJRV7MKCRzVdm0nVyslD210T3hlL2vHKNnzrXhmBlE9mF5opAF7ke45aA8x
	dRm86smz6oPMOMlKoGbJTlGwyoNE1tg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-FkqZa56POnaVk9hUSUq8FQ-1; Wed, 08 Dec 2021 14:07:26 -0500
X-MC-Unique: FkqZa56POnaVk9hUSUq8FQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED7D581CCB6;
	Wed,  8 Dec 2021 19:07:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88ED245D86;
	Wed,  8 Dec 2021 19:07:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 218C14BB7C;
	Wed,  8 Dec 2021 19:07:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8J7IJe019073 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 14:07:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8A63151E4; Wed,  8 Dec 2021 19:07:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 844B551E2
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:07:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 923E8811E80
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:07:15 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-586-wrOKtdqCMMSgYWb7Ybv3zw-1; Wed, 08 Dec 2021 14:07:14 -0500
X-MC-Unique: wrOKtdqCMMSgYWb7Ybv3zw-1
Received: by mail-qk1-f170.google.com with SMTP id b67so2896085qkg.6
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 11:07:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=lB+m1r6MrHJRcdp2JHvlueN5uMQgJb+tKXMbMRqFv/s=;
	b=MyY1AEIDf7tfJW8Pl660JYKFCnGPoni6b2dra+NQWtM8Y6lNH9G5UD1wYf9ZQcn+rA
	WS+SC+zdOuPwZ2HGMIFJ+Tb1YXUDqOdG7/h0pKuByCgaZdYbnOrphnAV50Ctzkrkr/o3
	2cXVQ4KKUmeHDOEhokJExSNGO4dYDrAPBmVvU7nxGjav6l93ZYd8KaMahKzvl+VjNDJx
	3gRjLjC1gCLcQNYTcx5umg6kmSrJY06d3ufwY+1vIOfNsPSD/SEWh0Tp96IcBm2sfy3l
	Hy/kOiJEfOn1rlvRVifTQKoaXLTsSBpgvTMFkTsTPhlG2f34/EpuSn2O8qGc4iTQicjH
	whMQ==
X-Gm-Message-State: AOAM531Ny2hJgTpzZdxd3yVzJn6I1LKw2i5gIB4h8xu9A7ZYXZsRyu7P
	HpWfCjYldBuEElmiym0C0gGSm0TUWiI=
X-Google-Smtp-Source: ABdhPJyp/tSAapmzoS2bUxDlqzmeWkNaOMUxypZqGlQYb0XtMdjfhz6H7pCCgsozOFH0VIldj6+lrw==
X-Received: by 2002:a37:a592:: with SMTP id o140mr8876896qke.1.1638990433344; 
	Wed, 08 Dec 2021 11:07:13 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	o17sm2065185qtv.30.2021.12.08.11.07.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 11:07:12 -0800 (PST)
Message-ID: <eb106688-8ce3-d826-70f5-775df84385a6@gmail.com>
Date: Wed, 8 Dec 2021 14:07:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Switching to a Different email Client
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E1mv1D9-0001mn-Hw@wb5agz.lan>
In-Reply-To: <E1mv1D9-0001mn-Hw@wb5agz.lan>
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

Maybe Alpine could work. It is rather difficult to read HTML mail 
without a desktop, but I think Alpine can do at least some of this.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

