Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5500342C1C3
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 15:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634133135;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3AE8gbR0AiaCAMzLVvmfR0I5XcnXeyBTtz8VqUvQ9E4=;
	b=am0Xr6WrIlIWUd2W+qajmgpdb8I93oncf4OLRaZREDztgCbmDA4k8QeFKa0ukuXiiwQeZT
	92Xs/cV56/hUYJZ+qdZce4P0Gx4LJR3ZnLbyBhcHdDCQZx1FfJ0wdUHVOCt3UkavKRnTVn
	JwFRI1iH8Gzkzk4lJwjNlvGD2dWP22Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-572-KPBYJRrZO1iM_Zmf8xi79g-1; Wed, 13 Oct 2021 09:52:13 -0400
X-MC-Unique: KPBYJRrZO1iM_Zmf8xi79g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76B4E9126F;
	Wed, 13 Oct 2021 13:52:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8C2F5C1A3;
	Wed, 13 Oct 2021 13:52:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B8634EA2A;
	Wed, 13 Oct 2021 13:51:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DDpp2s012497 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 09:51:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6D917404727A; Wed, 13 Oct 2021 13:51:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6961E4047272
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:51:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51B2D899ED0
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:51:51 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-56-z6aQ7gHiM0iAX0aE2QnSag-1; Wed, 13 Oct 2021 09:51:49 -0400
X-MC-Unique: z6aQ7gHiM0iAX0aE2QnSag-1
Received: by mail-oi1-f178.google.com with SMTP id z126so3860827oiz.12
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 06:51:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=3aYQrjjS6H0Yn6bZYaEZ9ajAjhx4HTB7R8HVzT9d0+o=;
	b=cTB+3qRT4JXga1uOGE3qKOzCXlz6+uYuILFGC9E1b7SGbmFduiagxYHQNQI6BlaSBN
	ZAKWgfrWAQmkdi8ONvvkH97PuKPsJ+Mf4qaAsQqopWuGOqn2LAhxpEXwj9IGZ36wy93i
	C6+o1eYYXqcCpSDNJazS5j1HeLr/dcZDsPpqGJTJLNPgcO9/Fcyk2QmytZyfwtr/mfU8
	UjfPrID2FxXNbW+/hZgZknELvU/aq0gTdQ3OucqAv9NXDQnMhf/jtNXBKNYSRztLBcKQ
	VxNsEYegq9KQ/zo/YfoJcUjxabc05kaGH5OKuC0+nKzkFJG12x8vcrupIeex+3P8wR2n
	19eQ==
X-Gm-Message-State: AOAM5331PPffUxFq6DVZ60R2gaqFQ1iUAOWY0xRSdYlBLC82Ek7Jn6mz
	j/0b2ny2P/OG6l6hnltmQ1V8m3BcwEs=
X-Google-Smtp-Source: ABdhPJzCexT9wRZ6tfAHs5+dSTBApINiodHf9oWmZX0JIYWKPxWi/KYZ19XzGyDwv2g1/h7fhJMvJw==
X-Received: by 2002:aca:f302:: with SMTP id r2mr8245986oih.90.1634133105443;
	Wed, 13 Oct 2021 06:51:45 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:bd72:15f2:6981:d4c9])
	by smtp.gmail.com with ESMTPSA id y5sm1952351otg.52.2021.10.13.06.51.44
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Oct 2021 06:51:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Wed, 13 Oct 2021 08:51:44 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
	<25040872-3042-4567-9052-D9FA44B55880@gmail.com>
	<CAGJxbF7g7n_wd6EAMSh+vm_kkdfurQZ+X=7-4em2XObQCxcXww@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAGJxbF7g7n_wd6EAMSh+vm_kkdfurQZ+X=7-4em2XObQCxcXww@mail.gmail.com>
Message-Id: <65AF279E-5331-45BE-B637-7CD454E89D68@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19DDpp2s012497
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did try that, it did not work.

> On Oct 13, 2021, at 8:24 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Have you tried pressing Alt + F2, typing orca, and pressing Enter?
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
> 
> 
> 
> On Wed, Oct 13, 2021 at 5:49 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
>> I installed fedora mate 34, and had orca and logged in.
>> But after logging in, I could not get orca to work.
>> Using be my eyes, someone said mute was not pressed.
>> Volume was up.
>> So not found the problem yet.
>> 
>>> On Oct 12, 2021, at 6:20 PM, Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>> 
>>> Hi,
>>> 
>>> Has anyone had problems with audio with the latest fedora 34 or even the
>> 35 beta.  There was a bug which someone reported something that had to do
>> with also, but perhaps this is fixed now?  I will have to give it a look
>> and see if it is fixed or not.
>>> 
>>> Matthew
>>> 
>>> 
>>> 
>>>> On Oct 12, 2021, at 8:12 AM, Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>>> 
>>>> A huge +1 for Fedora MATE. I have it running on two computers here, one
>> is not mine, and it works great. Orca comes with it, and you can run a full
>> install after pressing alt+f2 to open the run window and then entering the
>> word orca. Wifi generally works out of the box, though the NetworkManager
>> applet that controls it doesn't tell you what it is. Still, you can just
>> hold the alt and control keys and double tap the tab key to get to the top
>> panel, then shift tab past the toggle button and press the enter key to
>> bring up the menu that has your wifi connections. There's not much more to
>> tell other than it's a great OS, not just for learning, but for daily use,
>> and one of the computers in the house that is running it is even being used
>> for gaming and live streaming. If you need to dig deeper into the guts of
>> the system, it allows for that as well. I for one highly recommend the
>> Fedora MATE spin.
>>>> 
>>>> ~Kyle
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
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

