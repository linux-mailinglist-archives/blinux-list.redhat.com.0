Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2C62E3E0A09
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 23:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628112814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R4i5M0rybcCg+TBjLHjK81oprBuHGV7cLNujyO6/5r0=;
	b=GThnm7bBwO2P2zGG3cPDRHX7v5O5WFkle+FTA//0S4pEgv3VVwd0Anc2ZY4NQtxGXnMTl0
	9aow49Th49npfM58pDrI0EvdCrJdc0L7jVE8EP+4HTS+s8IOBAegFGKPr5ZdeT/9qC30Q5
	FiA+fXDX8iBVZDM9NUn6lsotxJmJEQU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-ou8VDzl6MlWGQy95uXaMAw-1; Wed, 04 Aug 2021 17:33:32 -0400
X-MC-Unique: ou8VDzl6MlWGQy95uXaMAw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6347760C8;
	Wed,  4 Aug 2021 21:33:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 737AC5D9CA;
	Wed,  4 Aug 2021 21:33:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A81A4BB7C;
	Wed,  4 Aug 2021 21:33:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174LXOK9005916 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 17:33:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 67FF620899F2; Wed,  4 Aug 2021 21:33:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6322420899ED
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 21:33:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F771800963
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 21:33:21 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
	[209.85.161.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-278-fwNWd0sEMJOW5q3lNitP5w-1; Wed, 04 Aug 2021 17:33:19 -0400
X-MC-Unique: fwNWd0sEMJOW5q3lNitP5w-1
Received: by mail-oo1-f47.google.com with SMTP id
	o17-20020a4a64110000b0290263e1ba7ff9so813402ooc.2
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 14:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=dH0qPI/2Tnw7/zi3ylEBZh6As0US0hrnmuMkHuLHIhA=;
	b=MxAqLiCA6QFOH6ANMOMfiCvJuvhOiHzCTdzO8uJb6xNbkyP4jth15Ubu1jr4k33l6K
	Uh/ooL2XFAERO7erlBCDV2AToGVxdNZlTfLhpzk2FAOszOhzA6gfcmBFDDRPb2W1py/4
	Sgt682pbOC0VNl0/MVlekpACXIDGc4SLv4LzSLFibqDxU8fUsiCoygeeEn5760AQleG3
	WZfdJmBPlZdc65XtlxFImCPtA2T7RAtInPQURdkkPA4pvLRbG1KiwDNNHtnz3UEAXUoC
	nYavLXKZVR+jkyii0YTj1rzgOSQYKv8xixZoT1xK0fEVjknBUt32WygBZalF8CNJrbK1
	fElQ==
X-Gm-Message-State: AOAM533xZr5pgyaIl1ToEE3qDhxlNbEF4Sxj4fspqG2L6KQWu097AoIR
	vWKPwtv/Y/u5f906IhuZhml1pOHndrc=
X-Google-Smtp-Source: ABdhPJz96M941kjddRTyq3Kd7PHk9me+urlmP2MtoU2gmEwGQ8ywCiOIAjEK/xNJqRnMmQ7FVjqEkA==
X-Received: by 2002:a4a:7651:: with SMTP id w17mr966766ooe.38.1628112798407;
	Wed, 04 Aug 2021 14:33:18 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id x8sm498536oof.27.2021.08.04.14.33.17
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 14:33:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 16:33:16 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
Message-Id: <EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 174LXOK9005916
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If I remember, it was the mate edition, about a year and a half ago.

> On Aug 4, 2021, at 12:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Installing Mint was exactly like installing Ubuntu, as far as I recall.  Maybe you grabbed the Cinnamon edition last time?
> 
> 
> Cheers,
> 
> 
> Dave  H.
> 
> 
> 
> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> 
> On 8/4/21 7:05 AM, Linux for blind general discussion wrote:
>> How was linux mint and orca during installing?
>> 
>>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
>>> 
>>> 
>>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
>>> 
>>> 
>>> 
>>> HTH,
>>> 
>>> 
>>> 
>>> Dave  H.
>>> 
>>> 
>>> 
>>> 
>>> Sent with Thunderbird and Solus GNU/Linux.
>>> 
>>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>>>> Dave, I have used gnome and mate with ubuntu.
>>>> I thought of linux mint, and tried it, but orca would not work.
>>>> Had you tried mint?
>>>> As to Solus, is that workable?
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

