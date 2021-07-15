Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA7C43C9D49
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 12:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626346290;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N/+vl40FL591Eusw6xJi5bUi/0OHxW/XcMInu7GlYfM=;
	b=RjIpoAbRZtZWLie9UbhLnoYSfS3yDW5wyZLmKd787Ddhj5Gf8RMu4Cg3JVBv/moV2OfVKd
	SdkBeYGLyLJU2p+ZvgOzql5rAAsu/Oaq0+OuHbrKKX9kDbm+UX8dhg4E7BnBgWYD9U9xpi
	PVMjQqE8XxbX2Gj1yJeqiXI8lblwS74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-B33Cd0jdM0GRsr-P_rT4UQ-1; Thu, 15 Jul 2021 06:51:29 -0400
X-MC-Unique: B33Cd0jdM0GRsr-P_rT4UQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86445104FC10;
	Thu, 15 Jul 2021 10:51:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 414B15D6AB;
	Thu, 15 Jul 2021 10:51:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B6534E9F4;
	Thu, 15 Jul 2021 10:51:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FApLJ5015251 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 06:51:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A3FF6202874F; Thu, 15 Jul 2021 10:51:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FBEC21602AF
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:51:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E64BD185A7A4
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:51:18 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-260-FGxXgp-ROQOHGyDua_uZQQ-1; Thu, 15 Jul 2021 06:51:16 -0400
X-MC-Unique: FGxXgp-ROQOHGyDua_uZQQ-1
Received: by mail-wm1-f53.google.com with SMTP id
	y21-20020a7bc1950000b02902161fccabf1so5770517wmi.2
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 03:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=1qVD7igWJS62HqDtNvyHiby05yiPzevoFibFeHdA2Z4=;
	b=WEGfNWe1IAA29p3jaSfotwtWw9PWQfMr8BiUE94VWohLg+uxil2piqvftpKuhcuj6o
	xq+Wvj48fodDlb9ZgAbYiOIJabtiZIWy7Jv6U6GoFYFwJh4R1rY1JkOqBVGc2jhTl8t0
	AjH8TAneOKm08M9vdQo33iy+pUQQVv5XX8jgZGk1PrwJ06aVWIZhIB2qvaPnh7bDdR1p
	RYUeY+lqvx+/XcPknWJmaSQb0TMOGAEksIKKi0E+dtlbfW43t3cMwIqXf1uHun+4BTw/
	oDkryQ2QfgRxyQ15mknIHfnGLOE5mlAlhNA3lcFVVxI67+YWw4bhPI28SZaqj8LG8MwC
	fCSw==
X-Gm-Message-State: AOAM531Yk8k6v5WJPnJbJFVxg7lughnhQuzLsHp8KRTaiAnDO4WQGmj6
	x1IBqqhFsUSZHV6jvpU+YIeYUdnvkf+wUA==
X-Google-Smtp-Source: ABdhPJwcDgNpkvKytD6HJ2Fbmxy4B5jACeE6EAJpFRJIdDumHPcOxy3TznFnwYa9h9e1xpjdwfsV7g==
X-Received: by 2002:a1c:4c16:: with SMTP id z22mr9748076wmf.176.1626346275510; 
	Thu, 15 Jul 2021 03:51:15 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id r67sm7986277wma.6.2021.07.15.03.51.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 03:51:15 -0700 (PDT)
Subject: Re: Nextcloud was Re: Cloud service
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
	<e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
	<15bce51f-2b5e-91f2-c1ae-2bcfdad07cef@gmail.com>
	<F9AE84FA-6262-4563-BD99-CA5E6AB4DDA7@gmail.com>
Message-ID: <12a0f934-88cd-9dad-45eb-6f904bf6a487@gmail.com>
Date: Thu, 15 Jul 2021 12:51:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <F9AE84FA-6262-4563-BD99-CA5E6AB4DDA7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ok, I now have it installed. Some buttons are not accessible / not 
labelled and flat review can not be used in this app, but I can now 
access my folder from disk.

Pavel


Dne 15. 07. 21 v 12:08 Linux for blind general discussion napsal(a):
> I mean, I just installed the nextcloud client from the package manager and it works fine there.
> Devin Prater
> r.d.t.prater@gmail.com
>
> Https://devinprater.flounder.online
>
>> On Jul 15, 2021, at 2:36 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Hi,
>>
>> so I choosed Nextcloud by webo and for now, I am searching for accessible client. I downloaded the official nextcloud appimage client, but my computer says, can not run binary file. Can you give me some recommendations?
>>
>> Thanks,
>>
>> Pavel
>>
>>
>>
>>
>> Dne 14. 07. 21 v 18:03 Linux for blind general discussion napsal(a):
>>> I recommend either self-hosted OwnCloud or NextCloud, or a service provider that offers one of these options. Far more than storage, both of these solutions offer powerful collaboration tools and can even sync contacts and calendars, and both are open source and secure. Check out
>>>
>>> https://nextcloud.com/providers/
>>>
>>> for available hosted NextCloud providers. All the private use providers will offer at least 2GB of storage, which is comparable to Dropbox, but some offer more free space.
>>>
>>> It seems to be more difficult to find OwnCloud providers with free storage space, but it's usually better if you can do so to set up your own host, either at home or through a VPS (virtual private server) in any case.
>>>
>>> ~Kyle
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

