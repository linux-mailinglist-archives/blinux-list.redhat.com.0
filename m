Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFDE4A37D9
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 18:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643562953;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/YS0zTpt9bmnLZawNRIKOEj1apVsXsV9OCUWzsuQnnw=;
	b=TDOQiGubxpP9ms2JNNDq84CDff4o5IOJqSxJumLYL2LyfazycIsFqsQ4r4IShfqZEamnz9
	JpPL481yWpPG/mkMKb2rIvB4j+WumCxaWei99P/EZJh1ylhp0VN8mHHhbWK2QPfGZhJtSz
	tIasC1JyVbGfYMb14zCKUIQcrXAucPk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-320-yGoJbe9uNCe6EP5qlZu_Xg-1; Sun, 30 Jan 2022 12:15:49 -0500
X-MC-Unique: yGoJbe9uNCe6EP5qlZu_Xg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE7248144E3;
	Sun, 30 Jan 2022 17:15:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 716427D534;
	Sun, 30 Jan 2022 17:15:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 966D24BB7C;
	Sun, 30 Jan 2022 17:15:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20UHFbij019132 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 30 Jan 2022 12:15:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EF0B5492CAB; Sun, 30 Jan 2022 17:15:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB53B492CA7
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 17:15:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0032811E76
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 17:15:36 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-73-UYtToZCSNDOzA-pImBdZKA-1; Sun, 30 Jan 2022 12:15:34 -0500
X-MC-Unique: UYtToZCSNDOzA-pImBdZKA-1
Received: by mail-qk1-f174.google.com with SMTP id b22so9988498qkk.12
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 09:15:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=4IcOOXzTM5g2l9f+QoqjaRzetiUOPrn0+ZblMABvEiU=;
	b=gOZuqnCqDKxe+MdqxLWJY4TlwXh5/BVqkxsmYU/0C176lrgt3+XTHgpr7T3p86RRRb
	4yIH0zJb2/f7PW8ufBo87XHT0WtyPAdrncHyo6g1AYMqbaqMyhT3lqPp0F9PSqHlbLA6
	hvW0D9HwZZe3vRjPst0km4tbBn5bHnZM/sAFOdsnWoa5m8qCrGBzQC0nzyxJqbAswhps
	0ctMiTUPPZ6ejkrhTqxiZoTnJUDjSR4jzkmdUCIMZJtMCftDqrcBWssUG4L8qzKgst2w
	q91usPemCV9E62wHZNBHz39UXUJlT4mIc0H9PiLtfq1R3JUtG8VbVzT7HSMRVMDtwv+X
	RXpw==
X-Gm-Message-State: AOAM532fO7eNHC7cqRk/v88zaXHorvBGylMZz6FhyjjYrBKNbIkME9IJ
	fwkIu7MoQBxhh2q/E7jaX3WFiVzWR2MWoA==
X-Google-Smtp-Source: ABdhPJxy4clHrM440ysfMx3PeKF9SleNTcrGUBAMppA107EUvarq8qseYZeq7ddI/PsmVGIRDveLKQ==
X-Received: by 2002:a05:620a:4009:: with SMTP id
	h9mr11204271qko.315.1643562934091; 
	Sun, 30 Jan 2022 09:15:34 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	l1sm7418595qkp.100.2022.01.30.09.15.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 30 Jan 2022 09:15:33 -0800 (PST)
Message-ID: <6dc91738-a2ae-a827-4517-ca2932530e7d@gmail.com>
Date: Sun, 30 Jan 2022 12:15:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Looking for good radio software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
	<fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
	<28fbe160-383e-388e-213e-907d29a19ade@gmail.com>
In-Reply-To: <28fbe160-383e-388e-213e-907d29a19ade@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh OK. Since I haven't used any of the software you mentioned at the 
start of the thread, and you did mention you wanted to listen to music, 
I naturally went to the Pithos client because it's what I use most for 
that purpose. If you're paying for Spotify already, do continue using 
its client. As for listening to radio stations, I am most familiar with 
the Tunein app that I use on Android devices, especially since the 
premium subscription comes with the Scribd subscription I already have 
for listening to audiobooks. If you're OK with listening in a browser 
tab, the website works pretty well here, and it even gives you a list of 
your local radio stations, or allows you to select stations from around 
the world.

https://tunein.com/

I was able to listen to a local station here without an account. If 
something more like playing through mpv is your thing though, I couldn't 
get that to work. I did find RadioTray and StreamTuner available and at 
least somewhat working. StreamTuner has a Tunein plugin available, but I 
couldn't get it working. Other radio station database websites seem to 
work better, but I do get some odd errors from some of them. But 
hopefully one of these will work for you.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

