Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 945EF4260CD
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 01:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651035;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h9aHjSl/gLzTVIYSFKsVpDDbyhDm3jdD3+m48GbeFnM=;
	b=ifOIIlVvB6AEN3OuM62E88vjx+sCVKSoaYNOWGg4qi3ROKCp83L9jAyCD4sXGU2a5SOOR0
	Q9KHen/wjeHBdXQDrQrKlirAXcFI7bFkX3pu/bHuZQoL3MTMyXoxbdYNRBrBBL7SwPzibI
	cRWCKWh5fQ5tPyqSIZkN4dQgYx/Bvak=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-1rEcujYGMo-fT_UvfDCUxg-1; Thu, 07 Oct 2021 19:57:14 -0400
X-MC-Unique: 1rEcujYGMo-fT_UvfDCUxg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D2DA1006AA5;
	Thu,  7 Oct 2021 23:57:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B33F113698C;
	Thu,  7 Oct 2021 23:57:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C2BB1803B30;
	Thu,  7 Oct 2021 23:57:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197NutCD024592 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 19:56:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D68A62157F28; Thu,  7 Oct 2021 23:56:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFFC72157F25
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 23:56:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98F08800B28
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 23:56:51 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-237-E0WoDKUROBKOIoOQddH71A-1; Thu, 07 Oct 2021 19:56:50 -0400
X-MC-Unique: E0WoDKUROBKOIoOQddH71A-1
Received: by mail-oi1-f171.google.com with SMTP id o83so3928835oif.4
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 16:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=0+QxgBiPd0nuE7S6TB1168hi/ht/342uklm/neueTPE=;
	b=YMPRajxH9fDm+MgJz5LvWOsOEe3WNxAvqn/dda0utX0sM1gWUktq74ctg25DwQyCpw
	LAhPouc2nuZxhzrifrhBFcgP1fvzX1wGWAyn5N70IenA4WJsx5+MrIH/JOqtIOdd0TFa
	M4AdGTNCqbgAreCaS+iYeV8rtp3821bkCk/7YuOHsIF/T/No683h7E8/UlxoFBVibmTi
	gDrina7QhoeisOIiRmjMFv5rSaXkz7UNnq3jU3NSa1Nzwf4OlEpkebAPBlkZvBJK8pqw
	ywXRvDeqzdGdwXeEiP5FoxuGNZyogesFp7FE2Am8DfDJQzZ8lZPqlwauZm8Ybum3rF0Z
	A3Ow==
X-Gm-Message-State: AOAM532lxsxbDFsQv/HQkVj/AOTZpo0MOhmaT2eSrbwVHHZMmIPUqhCa
	FcaJaP7v9LHLmICvu+SANf+ghq7h8U4=
X-Google-Smtp-Source: ABdhPJz8PMEsnskMEB8CagMNcXkz7OYU6RSeGzDj0E3PdnNlT+ei8AI9hMgb0Z0dKfBtT3GqXa66DA==
X-Received: by 2002:aca:c60e:: with SMTP id w14mr5189705oif.156.1633651009051; 
	Thu, 07 Oct 2021 16:56:49 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:596f:c81f:df28:2df3])
	by smtp.gmail.com with ESMTPSA id l8sm218437oii.57.2021.10.07.16.56.48
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Oct 2021 16:56:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Mate Desktop questions
Date: Thu, 7 Oct 2021 18:56:47 -0500
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
Message-Id: <F8ADAC94-B1EA-4382-87A2-11C2363242BF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 197NutCD024592
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

mint mate?
I thought mint had never been workable.

> On Oct 7, 2021, at 5:11 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> The Mint Mate 20.2 install worked perfectly with Orca. I had originally tried the Ubuntu Mate 20 distro, but that install is not Orca accessible. It is a documented problem. The Ubuntu Mate version 18 worked fine with Orca, so I assumed that version 20 would also be accessible--it was not.
> I am enjoying getting my Linux feet wet again using Mint Mate.
> 
> John
> 
> 
> On 10/7/2021 5:47 PM, Linux for blind general discussion wrote:
>> I have not an answer for your question, but am curious as to installation.
>> When trying to install ubuntu mate 20, orca would come up, but I could not get to the install screen.
>> I was stuck at super user.
>> How did you install?
>>> On Oct 7, 2021, at 2:56 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> Hi all,
>>> 
>>> I am setting up two laptops for sighted people, but I will be maintaining/supporting them. I am using Linux Mint Mate 20.2. I have two questions...
>>> 1. How do I access the task bar/system tray using Orca?
>>> 2. The Logon screen has multiple users defined. Sometimes, Orca will not speak on this screen. This sometimes happens at boot, but always happens after logging off one user and wanting to login again as a different user. When this happens, the Alt+Super+S keys have no effect. Other times it works perfectly fine--frustrating. Any thoughts/suggestions on this one?
>>> 
>>> Thanks,
>>> John
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

