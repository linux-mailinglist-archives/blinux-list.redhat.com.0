Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id EEA092B7577
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 05:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605674754;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ipVsy+9wMDFeXlt0qv8kFQ1l5gsDX0C+DIlO71e+Ing=;
	b=JGaH8VahADrLNqt1d6AdDfaamn3SwGFfh2nk3mdsfmpM/8nWnuKAb7vU6WN1iH9ioW+WYI
	qsd8F+2nX6kRLa/PhBReNQFDZFfLAbtJ8JXLLhpvee2yXTlghlg6aiJlgu/fZo5PpF2Ms9
	wvMhg9s1Pc2jNIX0vFK1RB/A0yCXusU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-XYhUQdaSNAKLL8yOVBBeew-1; Tue, 17 Nov 2020 23:45:53 -0500
X-MC-Unique: XYhUQdaSNAKLL8yOVBBeew-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB05E80205E;
	Wed, 18 Nov 2020 04:45:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5397C5D707;
	Wed, 18 Nov 2020 04:45:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A00C181A06B;
	Wed, 18 Nov 2020 04:45:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI4jZ3U024049 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 23:45:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F32AD1134CCA; Wed, 18 Nov 2020 04:45:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE7B71134CD0
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 04:45:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8AE28007D9
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 04:45:32 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-HdeckSntPiye1awYAwo93w-1; Tue, 17 Nov 2020 23:45:29 -0500
X-MC-Unique: HdeckSntPiye1awYAwo93w-1
Received: by mail-lf1-f54.google.com with SMTP id w142so1055956lff.8
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 20:45:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version;
	bh=enydWnj2dx/wiwt1YIz/yrYjkBJr17eoi4v/Ck84T/A=;
	b=VrbfIxYAL6tG/KXgPNEK21T0qsyvjIgW3BrSHGtqpXY3QtHIe5x4D/LLeOJxkOHKqt
	5kISpmq3lRj1MRqWH1++NjC2tzjfIiON5ghi6TQlDaTs/OwWeFLU/SdYMwfAHt+c4ADe
	qYCzke9Rvkcqow5PiKkAOo+c2mb11WyBUtn+IH8qTCp20KF9XkwIII11cO4wfBq7sW1/
	eUvi1n4DDKk1RGU36YygkxlL6FTGzlhloDJd3ICgFqYuwtc9QVZjU/F9BZB9vR7kinwM
	YL1LZjIcz9zftfJAk6ybPuwOXoUWtx8fMHp4wVLSZRMsqYIDnW1TmBRIeqJWYPjLNZcx
	9cpw==
X-Gm-Message-State: AOAM533drq/AB/sz0zxnjDiJJWWMu3XqXvBHrqwZT8uPHU5JBPCL7EGi
	WSpOYedoWsw0NlSfQoJe9e8N4keieTWdPgvT
X-Google-Smtp-Source: ABdhPJwmZTyStrU+YV2wveESRXiNBiDm9PFus3wX3spXxHxmKTKFq9pv9uRVCa9pNq7MXUVh3y46BQ==
X-Received: by 2002:a19:8854:: with SMTP id k81mr2747900lfd.195.1605674727046; 
	Tue, 17 Nov 2020 20:45:27 -0800 (PST)
Received: from [100.115.92.14] (81-228-143-85-no527.tbcn.telia.com.
	[81.228.143.85]) by smtp.gmail.com with ESMTPSA id
	z7sm3404814lfr.304.2020.11.17.20.45.25 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Nov 2020 20:45:26 -0800 (PST)
To: <blinux-list@redhat.com>
Date: Wed, 18 Nov 2020 05:45:25 +0100
Message-ID: <175d9abee88.276e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
	<CAJKfDDG3bJqAjidbnyOouUo4kD8OKNkxiZe1cqzd4T-ATe-7Kw@mail.gmail.com>
	<alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
User-Agent: AquaMail/1.27.1-1714 (build: 102700006)
Subject: Re: as I suspected
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

but only old android releases


Den 18 november 2020 03:03:46 skrev Linux for blind general discussion 
<blinux-list@redhat.com>:

> It's not based on a distribution.  See when you get the iso going, you
> have a choice of what's called jenux which is based on blackarch but you
> can also install android and if you do that at the end of a successful
> installation talkback will be reading your screen for you.
>
> On Tue, 17 Nov 2020, Linux for blind general discussion wrote:
>
>> Date: Tue, 17 Nov 2020 19:51:33
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list <blinux-list@redhat.com>
>> Subject: Re: as I suspected
>>
>> Jenux is based on which distribution???
>>
>> Le mar. 17 nov. 2020 19:36, Linux for blind general discussion <
>> blinux-list@redhat.com> a ?crit :
>>
>> > Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
>> > always seems to make sure that things stay updated. His dedication to the
>> > Linux operating system and to his user base has not been equaled in the
>> > space of visually impaired Linux distributions, at least in my opinion.
>> >
>> > On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
>> > blinux-list@redhat.com> wrote:
>> >
>> > > A new iso was released.
>> > > https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
>> > > for Jenux.
>> > >
>> > >
>> > > --
>> > > United States has 633 Billionaires with only 10 doing any annual
>> > > significant giving.
>> > >
>> > > _______________________________________________
>> > > Blinux-list mailing list
>> > > Blinux-list@redhat.com
>> > > https://www.redhat.com/mailman/listinfo/blinux-list
>> > >
>> > >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://www.redhat.com/mailman/listinfo/blinux-list
>> >
>> >
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> -- 
> United States has 633 Billionaires with only 10 doing any annual
> significant giving.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

