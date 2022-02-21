Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E14BD9B8
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 13:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645447263;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fqWynih6Kej5INFbYhm2r0kaGYjzjYKdGTKHEwv4uug=;
	b=JHE3j37g7bTEA6nzuCcxpOUlQcx7eaocNaleRF6J+F+VartBx5WWi0dDdykuYgVyLtElts
	MfW/PbqPVxooSYdMB62Z5j3P7jQryZJ/nxbBgz1C/QtM+9nRIHPRXtxjjXQcq44r160zPN
	mbapdbFkAOy7twrVC6HbU0kFWQlTpcU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-360-Ystp4nLuNy-YBup5GfJVwQ-1; Mon, 21 Feb 2022 07:40:44 -0500
X-MC-Unique: Ystp4nLuNy-YBup5GfJVwQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C125B8143E5;
	Mon, 21 Feb 2022 12:40:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 810FE7CA7C;
	Mon, 21 Feb 2022 12:40:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E1961806D1D;
	Mon, 21 Feb 2022 12:40:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LCeXHP009542 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 07:40:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4A912407E241; Mon, 21 Feb 2022 12:40:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45F44407E240
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 12:40:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27B7F10F988A
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 12:40:33 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-194-bxyW3GbSM0W3NlHHBJ_otQ-1; Mon, 21 Feb 2022 07:40:31 -0500
X-MC-Unique: bxyW3GbSM0W3NlHHBJ_otQ-1
Received: by mail-wr1-f41.google.com with SMTP id j22so769235wrb.13
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 04:40:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=MEus+RQfTaU7hDEh/n0mAq5mcRtXDVQVZPX/4htbZcA=;
	b=qA1rWEOG4q+Xjpbhss6Yexv4vqUdTbAcclYrOmF3qNMQ6ywo1IKd5JehlQCxP5LmJN
	2lljmkzr7pqcR7TF0iUMvb+Lz2hGjKljWn71WTeKIiPKIlKlJ5ZBJQMC42PqSLROuz3O
	tB2xmFysAdC1vBffu9ElDUt9GAN5VM3/SSTL48U9J7x815/tiLjOuvBrp86QvwCXi61t
	xVxWBadlJfQwkX2zFiJIxPS8r+XtqvWaxvPR+lQp5699X1v+p18dtyhLPH3Nqpm/Lubq
	p9jq/eCu27SvjyriJVk40YgrAjyYsKuOBoXwuoOiSkKjnB2CLw1gHUImTfBPWvipDuTX
	wo3Q==
X-Gm-Message-State: AOAM533uctPpYKO+CONaQghb2G1783BWGT4Yhe8PaNUqq2tb4okPEXEA
	wLpzS5XgCBXVnSJ2DNwBmLvuvHG0ZB4=
X-Google-Smtp-Source: ABdhPJxvXckYAhYTwn9uC8+RvJYScMVcLuehEs5gZS0hWXqbGQZByTtSi2ihgjumv05dRytfPGCI8A==
X-Received: by 2002:adf:e890:0:b0:1b3:6d7b:b29b with SMTP id
	d16-20020adfe890000000b001b36d7bb29bmr15588276wrm.692.1645447229572;
	Mon, 21 Feb 2022 04:40:29 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id n5sm33368976wrm.3.2022.02.21.04.40.29
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 21 Feb 2022 04:40:29 -0800 (PST)
Subject: Re: mutt or alpine
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
	<13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
Message-ID: <0d68f5cc-6a79-59f8-d5b7-544cfa8de612@gmail.com>
Date: Mon, 21 Feb 2022 12:40:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sure thing. I'm still having a problem of Alpine skipping out on a whole 
day's worth of emails. Like it goes from the 9th to the 11th and skips 
out on the 10th o Feb while that deisplays fine in Mutt, Gmail web, etc. 
So any ideas what's up with that?

Linux for blind general discussion wrote:
> If anyone would like, I can share my .pinerc file so you can see what I
> have going with alpine.  One over-arching consideration especially with
> software and more generally with operating systems is length of support.
> With operating systems much email is sent on other lists whether to
> upgrade or not.  Very simply, everyone has a choice of upgrade or bail.
> In the case of bail, the move gets made to different operating systems.
>
>
> On Mon, 21 Feb 2022, Linux for blind general discussion wrote:
>
>> There was and maybe still is a website called dotfiles.org.  It had
>> configuration files on it for various programs people found useful.  If
>> the website still exists the linux blindness lists might be able to
>> contribute to it but anyone who does so will help others in our community
>> by commenting their configuration files appropriately perhaps with a
>> #braille-friendly or #console-screen-reader-friendly or a
>> #graphical-screen-reader-friendly tag.  This way we have a chance to build
>> our capabilities and those that find these configuration files in the
>> future.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

