Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BB2733E0A08
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 23:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628112743;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GQ50npdICYkA0V3f0op7TWxt74K0fzxMDixS5lvw+vI=;
	b=CdYXaou3k3FGPOdMQ3WNQ2KT7TYrWbPmWyaIoqcA15Q+rOx9MbMsKPX3PiaNh4F9Z4fsIF
	KnRxairBe0kh5gXo/9gOGngp/LbuVgjJHGmSmRAdJ0RNoFiHtbH7hfe7AD76xVqRzzhsot
	+XxNO+ku+Dov/I3KjFyyVdatNdXdwl0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-OPWIyiHgP-meBCNdXq7Oww-1; Wed, 04 Aug 2021 17:32:22 -0400
X-MC-Unique: OPWIyiHgP-meBCNdXq7Oww-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B08E190A7A2;
	Wed,  4 Aug 2021 21:32:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40C8A60C9F;
	Wed,  4 Aug 2021 21:32:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 628094BB7B;
	Wed,  4 Aug 2021 21:32:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174LW0M9005825 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 17:32:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4EB9720899ED; Wed,  4 Aug 2021 21:32:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46EDD208AB69
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 21:31:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F593101CC77
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 21:31:54 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-234-4gXi-76TNDKRTEW-9l0_YQ-1; Wed, 04 Aug 2021 17:31:52 -0400
X-MC-Unique: 4gXi-76TNDKRTEW-9l0_YQ-1
Received: by mail-oi1-f173.google.com with SMTP id 26so4611642oiy.0
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 14:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=A0i8mvjMQfhV7DF5JbPGig1vC2dJLelfwL+VqJPmMBE=;
	b=AZdISMbV/qPNyO1KiStbzNDSF8wPiyAtDph2AR0PiJf8jYNVSf+cl5zBrQZiBd/ErK
	g10iPZpOEif83nqaDE6M5cLaCEwaExJOJNS79gBrOyDOthJwS1htB/FYvfT9XuranIn8
	qCcJ9NYWC48AGv7KWWeQAihZ4DN59E3v/qAj0tOYm5MGzpOrBr/sW4aoJFPFfo80p8w7
	mgnNKPnA/8dpPbyaWzBNKiBcpNzX1OfVVqq/nJpLm+j3JTOsepj+OEn5w+aCUTY0LlXm
	6tUvBMui6DxJJqXusG5Ul4y/eE4bQop9wg7YTdcFBC2UdTfFSfL+vEp9NAO08q2/Uyna
	4r7A==
X-Gm-Message-State: AOAM533icPFPUVviWFYp2uyQD+8I86qiwgR5PP6a0HY9d4Kkuk7Gp8V7
	5HrE1jvBUERPwYgJP64uCoxtO6CVgpc=
X-Google-Smtp-Source: ABdhPJwvim6xlOJaGQ7ScBk05/iu3mkdy2I2+UMsI1a949w+fOIKEowaypDcQsG6TiquW0W3fxcEbw==
X-Received: by 2002:a05:6808:8f0:: with SMTP id
	d16mr8180411oic.149.1628112711671; 
	Wed, 04 Aug 2021 14:31:51 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id i188sm693633oih.7.2021.08.04.14.31.50
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 14:31:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 16:31:50 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
Message-Id: <924A2902-6BA1-4033-94AC-B8A5B1AA40BE@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 174LW0M9005825
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried budgie, but guess I should look for a guide for keyboard commands as to how to get to programs, and how to get to different drives.

> On Aug 4, 2021, at 6:33 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Dave, did you have the issue I'm experienceing with Firefox not announcing Orca keystrokes and Chromium based apps causing Marco to lose focus at times? Those are my two biggest issues with the Mate DE, but Budgie with a drop down terminal is all kinds of amazingly good.
> 
> On 8/4/21 12:05 PM, Linux for blind general discussion wrote:
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
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

