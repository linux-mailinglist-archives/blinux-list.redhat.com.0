Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8184AAFEF
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 15:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644157625;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=usWx/wxqQaojrT6TwHyZcA+U3FusVS6eMHCU03zgFzc=;
	b=KbRkMnXzselB4wEHHb9dNfZ/hDTFeTZ8bOoyaDkEEJLrKWEApkhYn2cJ0lwxBn3L4MrZjP
	5Ceqzuabr/jm+zrT4Ry2fkdIntoXzC1qQKpP2ch17BAf4FSJfsbq1d0gaxHlu7WwbAvUUh
	2gCWXchRlC8JudgbFOKtYcgkxTA29VY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-UkjxuNHKP-qbYYOBthQa_g-1; Sun, 06 Feb 2022 09:27:02 -0500
X-MC-Unique: UkjxuNHKP-qbYYOBthQa_g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EAB61853024;
	Sun,  6 Feb 2022 14:26:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A28927243E;
	Sun,  6 Feb 2022 14:26:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A1401809CB8;
	Sun,  6 Feb 2022 14:26:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216EQUxw012178 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 09:26:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E3EBC202CB; Sun,  6 Feb 2022 14:26:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A68CC202C8
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 14:26:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50BFD185A79C
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 14:26:30 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-672-wJ79FX5zM1efJYa4y1Wg6Q-1; Sun, 06 Feb 2022 09:26:28 -0500
X-MC-Unique: wJ79FX5zM1efJYa4y1Wg6Q-1
Received: by mail-wr1-f44.google.com with SMTP id k1so3921133wrd.8
	for <blinux-list@redhat.com>; Sun, 06 Feb 2022 06:26:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1bFHVXGO7jvvV7l2dgmR8CucXPHyO87sZvNRM8L+CZI=;
	b=xsIM7QG8Kpi9qYn6oVa8QUZg7lmaD2q3LCEE5A76NgrI7leBNrb3rWkLkN6deUyOOQ
	Wo/sY9uXqGmOpkPPM4KjHfnro8My9dRJqOKXyyHMPKOGSfrT1MNNZy3HcUj6sMg7+T4U
	WWvbSioGbFFsVLCmk3F27deeosbPo+X554nFR+LAb1x7xflRSyXnkTKQHwMHt1HFFMhm
	98/LpVVE/h+NTyeT87Ddwlj4pQ1+A6V2db6fiQM1vdC1P4GmyHhelU75uecztD8P9AbF
	kf+qOz/fqd3a0Frl0emATApnkrclInL4SCEYGwwU99TnVeF4Ie6EvxeUkxQilGAe2zAF
	KbCw==
X-Gm-Message-State: AOAM531NmAnlUzdZn5FwM5ltQW8xPB7ZoOsNHw5mNhEoYOxobBf8IePH
	HLiS/zzNGIy9rMH45uIHio/paSwDloVzCg==
X-Google-Smtp-Source: ABdhPJwrQ2pKmvj9eINhn7ukSkidaQz4M3NFxZpUlm0RMvqrYyDrusKOupyPn6Gs8FTc/U6dSwRWyg==
X-Received: by 2002:a5d:458d:: with SMTP id p13mr6716421wrq.580.1644157586959; 
	Sun, 06 Feb 2022 06:26:26 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	be11sm7329000wmb.19.2022.02.06.06.26.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 06 Feb 2022 06:26:26 -0800 (PST)
Subject: Re: Firefox inaccessible in Ubuntu-GNOME 22.04
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9806e258-e16a-8d36-6e2f-463b9b9613f6@gmail.com>
	<CAO2sX33yfEAf+OBizwFG9iifoUNwHvUqY6EAxVsiiKAVLJCKRg@mail.gmail.com>
Message-ID: <a44451c2-1f67-ef10-5168-cf292c8a7a3e@gmail.com>
Date: Sun, 6 Feb 2022 14:26:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <CAO2sX33yfEAf+OBizwFG9iifoUNwHvUqY6EAxVsiiKAVLJCKRg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Can confirm, naps on my desktop don't connect to the atk for various reasons

Linux for blind general discussion wrote:
> Was Firefox installed via a Snapt package or a .deb? I haven't tried
> Ubuntu in years, I remember hearing reports that snapt packages often
> break accessibility for some reason.
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

