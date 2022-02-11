Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F22404B276F
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 14:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644587520;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p2SzA9oGeD0ey1L1CNwpveUJvHWoMUN0zv6nikrKY3Q=;
	b=NuLMioZeAq1zY0z0J0M0580UmKIrOnL/rr6zzXBsscYAQTPWEwhUOF8zvXyEiqH4FGMRvK
	IoHOR/3+WTjMhKssX38a3FU1pGsfscev2emzwhJkF48CvbBJAiRkUD2rJ6v4sTdPtc6+Js
	2tGzTYhzu9E7X6L0/oQb8r6CF2ol29U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449-ecDyspFAN_SuYoYRRCx2jA-1; Fri, 11 Feb 2022 08:51:56 -0500
X-MC-Unique: ecDyspFAN_SuYoYRRCx2jA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C7D2A0BF8;
	Fri, 11 Feb 2022 13:51:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D9FC57F0B;
	Fri, 11 Feb 2022 13:51:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E483857683;
	Fri, 11 Feb 2022 13:51:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BDph9B017836 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 08:51:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6917840885BB; Fri, 11 Feb 2022 13:51:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64BE540885B5
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:51:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BA8C8038E3
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:51:43 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-230-VE4TDO3IPAmxUpSAek9DKg-1; Fri, 11 Feb 2022 08:51:41 -0500
X-MC-Unique: VE4TDO3IPAmxUpSAek9DKg-1
Received: by mail-ej1-f50.google.com with SMTP id qk11so2707688ejb.2
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 05:51:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=RW+cl5xhkiv/qfEWnoTPZrlF80dCO8tBFrRsvB9sngM=;
	b=D+OKIV0gcNuCCU3vYkR8w0YlpKDvbs/QQzPAw3a72iYxH1p02L6vDg/TRD+RkGC8se
	p9Bcf7ArXpSn5P+Xo7sMvwETdtZKIXp3tqcVfFh6JeerHtFSlORjFZL7FKZa6+MXU6hF
	a4UqarhfVjJ1S3vw5vtTj5f9TOjoGrCT3i9TylgWXhtTyvwtR6CEbPa1M2S1YbzbCbM6
	3YtDgZTYbvnWiTTIIaekMsWzk2i9LFWfM2Zlk0Vx38596tI/0Gb/Atz9BdF3lxbY2xrU
	TjV4Itf/cvGjIkmkeKs0tiFTrDuC8jKJcdAe3A2FQnw4q9woAovBETZAMPACL6gAK7xi
	w2ug==
X-Gm-Message-State: AOAM531ifTlR1YndtGH2L7CB4V/9INjy0ZaiDQyqgun2uX1HZNtbT03o
	eM2k2ijLvAfVWpBJTAB+H1qYqcYd0ig=
X-Google-Smtp-Source: ABdhPJwixCAI0MXjBQVQA5+nlKbt3U9gxdUIWfSGL1YR+9aK9j0Bj9fj1WJPBtXl+4pZcVdatOD1Xw==
X-Received: by 2002:a17:906:7289:: with SMTP id
	b9mr1480099ejl.171.1644587500037; 
	Fri, 11 Feb 2022 05:51:40 -0800 (PST)
Received: from brandt-slint ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id q7sm8254414eds.78.2022.02.11.05.51.38
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Feb 2022 05:51:39 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Fri, 11 Feb 2022 15:51:26 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: `alpine refuses to save password
In-Reply-To: <cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
Message-ID: <4c22ef4-8e2d-eed7-b46b-94c6f780ecf1@brandt-slint.local>
References: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
	<cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Hi Jude,

Thanks for this, seems like we'll have to deal with another pain in the 
rear, if we want to keep using bloody Gmail. I will be looking in to 
forwarding my mail someware else then.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Fri, 11 Feb 2022, Linux for blind general discussion wrote:

> Date: Fri, 11 Feb 2022 07:59:46 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: `alpine refuses to save password
> 
> Jude here.
> alpine used to have an inbox-path and an smtp-path variables in .pinerc
> and the format was the path to get to the provider followed by a colon
> followed by login name followed by a colon followed by password all on one
> line.
> it does not show in the help for those variables any longer so perhaps it
> got removed.  In any event you'll need to generate an app-password to use
> alpine with google and I don't know how long that will be possible since
> google may discontinue all app-passwords by june of 2022.  If that's the
> case, you can arrange to have all gmail forwarded to a mail address on a
> domain you own so you can read them locally.
>
>
> On Fri, 11 Feb 2022, Linux for blind general discussion wrote:
>
>> Hi all,
>>
>> I hope this message didn't post twice, for I got a mail delivery system failure notification.
>>
>> I have looked as hard as I know how, and have tried almost everything I could, but no luck in making 'alpine' save my Gmail password.
>>
>> I did "$ touch .pine-pass", had no luck there, "$ touch .alpine.pwd", also no luck.
>>
>> The only thing I can think to do is to re-compile the darn thing. Maybe that'd help.
>>
>> If anyone knows how to fix this issue in Slint, please help?
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from my MacBook Air
>>
>> Contact:
>>
>> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>>
>> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>>
>> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>>
>>
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

