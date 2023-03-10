Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 548766B451A
	for <lists+blinux-list@lfdr.de>; Fri, 10 Mar 2023 15:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678458659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jVHeuSuodFLcHSj8FbU4Ks3n0D8ahN2EYN8xIsXzjs4=;
	b=S4q9XPpnePlQmWmpiXxZYu1B/u8Cwc46tMlo0gif7AsF06z08+6OVgqBHGYbVvP7DmYOdZ
	hPHekNKWCJwaw7yEDe1HnmYYTubrSDVWnUlGjvnvJMnSfjskfbQKc7RydKbi2s07JwlKcC
	IBoirhEbcpVmgYQBNR/vS9jpGZOzRXE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-h4GRpC4hMeauE4qqyaAXsQ-1; Fri, 10 Mar 2023 09:30:57 -0500
X-MC-Unique: h4GRpC4hMeauE4qqyaAXsQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF3D4100F90A;
	Fri, 10 Mar 2023 14:30:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ABC9E4011AC8;
	Fri, 10 Mar 2023 14:30:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1600D1946A5E;
	Fri, 10 Mar 2023 14:30:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Mar 2023 09:30:46 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: XFCE a11Y specific tweaks?
In-Reply-To: <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

yes and has for some time by now.  I used it a couple years ago.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 10 Mar 2023, Linux for blind general discussion wrote:

> Does orca work with x f c e now?
>
> > On Mar 10, 2023, at 02:17, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Quick question. I've put XFCE  on an Arch install on an old laptop, since it's one that takes up the least space out of all desktops and is lightweight.
> >
> >
> > So what are some suggested things I should do from an A11Y standpoint? I'm setting up shortcuts for things like Firefox or Thunderbird, an so on. I've checked the box for assistive tech, I've set my .bashrc up correctly.
> >
> >
> > So what XFCE specific things do people suggest? I'm starting to like XFCE now I've got the hang of it a little, just wondering what A11Y things I need to do in order to get the last few kinks out of it
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

