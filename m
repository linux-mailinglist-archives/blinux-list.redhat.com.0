Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA274568C9
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 04:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637293835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hGVUThyt/hKsAYKmXjq4n5Gdj+cZ5A3EfzejRoXV6TI=;
	b=K/Fv1wfjZRNkcIDax/P+smhaFYc58lMYBJ6+JM9mSNoI6ypw/dpNNZGHQLQqqttkEc0/if
	sRr7Vgn2l+TBgJcPih0Ti4V6XHQrwm6PstebW9zP97CL/IHDH6UjUs6MldQw99MTq02Wni
	QfHfWIT8HtSMsVVozmk8nKJcY9BhkHk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-414-MX5aG4C5NHG6hPVbK9kVHw-1; Thu, 18 Nov 2021 22:50:31 -0500
X-MC-Unique: MX5aG4C5NHG6hPVbK9kVHw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E880915721;
	Fri, 19 Nov 2021 03:50:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 900793AEF;
	Fri, 19 Nov 2021 03:50:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 742DA4E58E;
	Fri, 19 Nov 2021 03:50:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ3mjqk028150 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 22:48:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5C6142026D60; Fri, 19 Nov 2021 03:48:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 571C82026D46
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 03:48:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1329B1066680
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 03:48:41 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-231-YlHVuKKjODuqSSnfCA5qMw-1; Thu, 18 Nov 2021 22:48:39 -0500
X-MC-Unique: YlHVuKKjODuqSSnfCA5qMw-1
Received: by mail-qk1-f179.google.com with SMTP id d2so8874739qki.12
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 19:48:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=8sfiUdeXJC1P22w6K8gTbXOBYFAvP9gW6W7TK4MNN7o=;
	b=OPGvSI+HFDhz5geP2Hdt4K9lgpWYagomNuQUFOm5WDxcahw+zNoQBuQhCyJRSgqQjj
	1wfZUyZVzIzwmaZwZibSu/qoMmiy7hxQrjQXWg3Bxu6yGeJqrWyRG/QitvKzL4+VNTar
	DiwqPUYmGLovf37YETFFC8Qb5a2H2QXOXRbdv2B+/ilkCDNu4Im/YVixVLEqGR2vl9n+
	Z/9biqMKYvWDBzrCa8s/6R6dsJQbI3EEHfdtg2Kyn1Ofehx8hvZbbfAYef+hrYn4Hklh
	8sIGPVsDGaAe4jSfxJqmgEp8101zvq01aaelVbMEdTrSWpx4Go5n/TtL4LAelIUgKSe1
	OddQ==
X-Gm-Message-State: AOAM532S73hQ4Y0gzqMOPgLLodIgpDdzmNm9lfMWX9NCDH9dkS6mhGzt
	LWL+JunKqzGyniSg72NHK5TmC37sox4t0tP3
X-Google-Smtp-Source: ABdhPJznWAO1oBMdKctenXp8XdioEebP7RviYynNwgzklb0iUyNu4q5H70tQpIogZqMHBHG1Drj+nA==
X-Received: by 2002:a37:2713:: with SMTP id n19mr24618914qkn.375.1637293718801;
	Thu, 18 Nov 2021 19:48:38 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:f88c:fcef:e1cf:a97c?
	([2601:152:4000:330:f88c:fcef:e1cf:a97c])
	by smtp.gmail.com with ESMTPSA id
	f7sm1025543qkp.107.2021.11.18.19.48.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 19:48:38 -0800 (PST)
Message-ID: <3a2ec932-d790-32b8-0118-0d08f81d52c2@gmail.com>
Date: Thu, 18 Nov 2021 22:48:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
	<5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
	<fb7296f8-21a9-c6a8-3ac3-43ca70546485@gmail.com>
In-Reply-To: <fb7296f8-21a9-c6a8-3ac3-43ca70546485@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes Kyle,

I rebooted many times. I have no idea why it is not working. Do you know 
if the dnfdragora-updater works? Every time I boot up Fedora I get a 
message saying that dnfFdragora-updater has 351 updates. When I find 
this notification in the upper pannel, and hit enter on dnf-dragora 
supposedly to get the updates, nothing happens. I just hear orca saying 
DNfDragora-updater push button. I am hoping that if I get those updates 
my braille would work.


Cheers,

Ibrahim

On 11/18/2021 9:37 PM, Linux for blind general discussion wrote:
> Did you logout or reboot your computer after you added yourself to the 
> brlapi group? If not, that may explain why braille doesn't work. Once 
> you reboot, it's supposed to work as soon as /etc/brlapi.key can be 
> read by your user.
> ~Kyle
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

