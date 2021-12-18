Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D5479B9F
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 16:52:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639842732;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dxq2rpLNzJk7xfkf6GVX/ZFDgYC2P89Gq9tW9fWNvyY=;
	b=E8jKAwhwDk7S658HNhumjAiT2Z1pHU7YihbNI7713pSJ26ntSM7EZQ0+a1RcpFnQ5Lk4NB
	ZdjGT0ztwYDZQS5XppjNK5bW3h4n494n75jEd+tTkgPIyBlqAg5blqU2coJRJEYbKzZH7C
	Hp01S2o3yU7bjqCeQ+a8lZLng9ohvko=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-GhVbnZpgNyeFTeztU10zJQ-1; Sat, 18 Dec 2021 10:52:09 -0500
X-MC-Unique: GhVbnZpgNyeFTeztU10zJQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E03D2801B2A;
	Sat, 18 Dec 2021 15:52:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C831894BBA;
	Sat, 18 Dec 2021 15:52:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E1E04BB7B;
	Sat, 18 Dec 2021 15:51:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIFpn9J005168 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 10:51:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 62E4940CFD02; Sat, 18 Dec 2021 15:51:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CADF4047558
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:51:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4222F185A7B2
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:51:49 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-588-XnbtxuZKPKOUZENoaiKptw-1; Sat, 18 Dec 2021 10:51:47 -0500
X-MC-Unique: XnbtxuZKPKOUZENoaiKptw-1
Received: by mail-qv1-f47.google.com with SMTP id o10so5255789qvc.5
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 07:51:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=zqbHd0NK+wuDqCEQ3/bzJAQyphuX6Be+LV0gWl1c+Q4=;
	b=lcTJZ91ugPW4mS0qPmrNFvOEIVgqxODoqe9Q48zqQMa1QN7UuQrATr3RP0W5rvmS8u
	6Qf0kmn4nSFx1zCVDb0xByf9hq/MOkUyRWm9eA76sOtUZGVpnTBluVntlTAr+tP7BS8h
	BKxTYMJdUfb2ofYsynlhl5bhUl2vdYeo5kZ2i1Tz+KgglfauNq+NER4IIwm7C9aEhXnj
	vvEYrBo1Ed0pyMelPEsX2+enZg3TkoeDfLSdkS6rYx7bamKWqAnRbD7kt47yOJbOwJ7b
	aPv7eT0SZy712dx9B3i50UAUMYxyJNyX2oND56X4sa2OW3Rk0m2OskM/md03KSZ08rk2
	Q/lw==
X-Gm-Message-State: AOAM5325Dqb+Y1tALopMnMm1fy9gD85Oi4t1saQXti38w9b9IO/LzK5r
	DxKh1C5ZCGbuW5qAdvAlLoM/BC1BpWU=
X-Google-Smtp-Source: ABdhPJzsxZzg3zSpoJ2dOT/5Xk3DERdlKC83gLr7CF1MLFEg2Fgv3RQM2lSar9tYCkRtr4cEO+7rWw==
X-Received: by 2002:a05:6214:e41:: with SMTP id
	o1mr7012986qvc.43.1639842707235; 
	Sat, 18 Dec 2021 07:51:47 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	k85sm7007213qke.134.2021.12.18.07.51.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 18 Dec 2021 07:51:46 -0800 (PST)
Message-ID: <19dcfe1c-4bb8-8e82-61e7-77c0e440097d@gmail.com>
Date: Sat, 18 Dec 2021 10:51:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Webmail vs client question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
In-Reply-To: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm not sure about Claws-mail, but I know that both Thunderbird and 
Seamonkey have options for not storing messages locally, deleting 
locally stored messages from your disk once they are of a certain age, 
in days, weeks or months, and compacting folders to save disk space. I 
usually just turn off local storage. There was a time when Thunderbird 
ignored this setting, but that seems to have been fixed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

