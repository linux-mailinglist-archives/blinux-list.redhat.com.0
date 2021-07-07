Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A982B3BE8EB
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 15:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625665226;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2hVC+huCjTiCqshYoV+THYF58jFmz0Qvqg+/mNHPfe0=;
	b=fCa6gnpUFuAbfw2dLPKWyMf20Ou14hVvQdAGJg8rAB6PQNDRyYLHOUkUSBXt5v83ahVIno
	cytBVN9/gTWGK6IYozNZAUrLtjTXtLFDSPXbUCoxsWobKx8HkmYfc0IgNf/0xUsXeNtBuw
	dC2twOX9+/0NHH2XyIIl+Gum5NfA0tk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298--nB9qKCtPKi8L01LoamcrA-1; Wed, 07 Jul 2021 09:40:25 -0400
X-MC-Unique: -nB9qKCtPKi8L01LoamcrA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DA818042F3;
	Wed,  7 Jul 2021 13:40:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A02F60C05;
	Wed,  7 Jul 2021 13:40:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34A6D1832EAB;
	Wed,  7 Jul 2021 13:40:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167DeBQU019624 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 09:40:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2C8EDD93DD; Wed,  7 Jul 2021 13:40:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22FA6DA67A
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:40:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5B0989C7DD
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:40:07 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-521-kfX9huS6NS6UQAwGCXL-Qw-1; Wed, 07 Jul 2021 09:40:06 -0400
X-MC-Unique: kfX9huS6NS6UQAwGCXL-Qw-1
Received: by mail-io1-f51.google.com with SMTP id b15so3439389iow.4
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 06:40:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:user-agent:mime-version;
	bh=9x5r4XnQrWxJZ8RPITEDzrEAZxH+nytTGo+iSeG2qd8=;
	b=spwgn/NXjo3756oXJuVEadnYYZMM0c3GoyAYik4BUvyIhpyqWJbwLg0JL4rSjIFL3j
	Z/Mm0zTt+Cdn+obThBqWB7hX5QUtJs9Af6/3Ap+IvVSczh0qjFEQaBvHgFp6wF3Hud4V
	NgF9gR8hto2YjTjpfGWh9DgeX+XEjJ6STfkp/Dc9aFnUxnrzye5n7zX9GsOUvn7a01UG
	nMdrIYl+GbzPQNEfR7g/x91eMHgp7Zn6n4SAXUmZn82Iupfz+2eewhtr5aituUjqwWJr
	Jr4BkhLC3rxXXr7TF+anz2IJUWGA4FUXfHpZq2gwnEjZ8XBiRyZBFnKllOCyyaSWn6Mb
	rQ7w==
X-Gm-Message-State: AOAM532DkgzcWyhNTWSlUgz2wjAD5/Suxg2xTtCiCnsF4583/Gmd8ruT
	SngmTilcRs5iJ0Z90m836V/jLv99JS1g4Q==
X-Google-Smtp-Source: ABdhPJzEaWCIUNiZlT/Qve9lw6vh9hHAwVy86UYRhw4VnhejHmze9GzjMT0NusRAyYPgp3jNz0dJlg==
X-Received: by 2002:a05:6638:1921:: with SMTP id
	p33mr7956600jal.95.1625665205139; 
	Wed, 07 Jul 2021 06:40:05 -0700 (PDT)
Received: from [2600:6c44:f3f:71f1:18c4:bfc8:cff0:9e03]
	([2600:6c44:f3f:71f1:18c4:bfc8:cff0:9e03])
	by smtp.gmail.com with ESMTPSA id
	r6sm10831203ioh.27.2021.07.07.06.40.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 07 Jul 2021 06:40:04 -0700 (PDT)
X-Google-Original-From: "Cheryl Homiak <cahomiak@gmail.com>"
	<cherylhomiak@gmail.com>
Date: Wed, 7 Jul 2021 08:39:59 -0500 (CDT)
X-X-Sender: cherylhomiak@soladeogloria.local
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
Message-ID: <alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

That's great news! I had seen a comment somewhere about debian no longer 
having an accessible install but if it still does, I will definitely go to 
that first.



-- 
Cheryl

May the words of my mouth
and the meditation of my heart
be acceptable to You, Lord,
my rock and my Redeemer.
(Psalm 19:14 HCSB)

On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Hi,
>
> I'd still use Debian because IMHO it is the best distro regarding 
> accessiblity support, easy and uncomplicated installation for a blind user 
> with braille and speech, e.g. I am using Debian for more then 20 years now 
> and I not missed anything. I am also working in the console most of the time.
>
> Cheers,
>
>  Schoepp
>
>
> Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
>> I've been very busy the last few years and have been using the terminal on 
>> my Mac for a lot of the things I used to do in linux. Now I would like to 
>> get a laptop for linux again. I mostly want it for command-line use rather 
>> than for the gui though I suppose I may end up expanding to that at some 
>> point. I mostly used debian when I was using linux with a few excursions 
>> into arch. I am totally blind and use speech and braille but the more I can 
>> use braille, the happier I am. I used thinkpads a lot and also converted 
>> old Apple machines but I don't have a spare Apple computer right now and 
>> probably would go for Lenovo. Can somebody tell me which dists are now the 
>> best for installing linux, especially knowing that I want to use the 
>> command line a lot? If I get a Lenovo with linux on it, am I probably going 
>> to want to reinstall anyway and how hard is that nowadays? Obviously this 
>> email is prompted a lot by the thread about getting a laptop for linux. It 
>> really feels funny writing about th
> is
>>    as if I was a complete novice when I used to install and set up systems 
>> all the time but I guess one has to restart somewhere.
>> 
>> The only problem I had with my Lenovos, and this was after years of use, 
>> was having the fan quit. Some of this was just the age of the Lenovos but 
>> it seemed to me that it was becoming harder to know how to set up the 
>> system so the fan worked right where at the beginning of my use of linux I 
>> never had to pay attention to fan settings. It may of course be that it was 
>> mostly the age of the laptops - I got years of use out of them - but I'm 
>> still a bit hesitant because of that.
>> 
>> I know this email covers a lot of territory - I'm basicly thinking out loud 
>> - so just respond to whatever you know and can address.
>> 
>> Thanks for any suggestions.
>> 
>> Thanks.
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

