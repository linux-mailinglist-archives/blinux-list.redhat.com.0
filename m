Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3B7501C65
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 22:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649967065;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3zxJaWrc2Yt9GucxswCs+QxvzjlxKVLXVKuIiULQaCY=;
	b=TkRIAcA1r+9t42R1X+eGICx2l6aau/GHC7Kau/j5s39jZ3lFS/Dx7HhoraRfV5lUSuVVCR
	oYkwY0Tj8l8NV8PAr1yQM1ZP5IQyoBzrB6osygoOIBX5eqvPsLgo1Uvsr4MU10bJNzERea
	uWafBJZuagPD/smueCk/TjK2Zs5vUZg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-KsyPvD9TNr2pMRfvWG4A3Q-1; Thu, 14 Apr 2022 16:11:02 -0400
X-MC-Unique: KsyPvD9TNr2pMRfvWG4A3Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2EFC1C05ED0;
	Thu, 14 Apr 2022 20:11:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E2798416385;
	Thu, 14 Apr 2022 20:11:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8D6EE194034F;
	Thu, 14 Apr 2022 20:11:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 23:10:52 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
 <mailman.8597.1649918264.111201.blinux-list@redhat.com>
 <mailman.8550.1649941474.111203.blinux-list@redhat.com>
 <mailman.8518.1649942329.111202.blinux-list@redhat.com>
 <mailman.8567.1649944446.111203.blinux-list@redhat.com>
 <mailman.8345.1649945219.111205.blinux-list@redhat.com>
 <mailman.8640.1649947528.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8640.1649947528.111206.blinux-list@redhat.com>
User-Agent: NeoMutt/20220408
Message-ID: <mailman.8680.1649967060.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Apr 14, 2022 at 04:45:03PM +0200, Linux for blind general discussion wrote:
> I beg to differ. I am registered to several mailing lists, none of them hide the
> names or addresses in the messages themselves (but they do hide part of the
> email address in the archives). I also have maintained an email list for years.
> 
> 1. The lists I follow or maintain are not spammed.
> 2. Moreover, I manage my own email server, did not even care to install an
> anti-spam on it and receive so few spam among the many emails I receive from it
> that I did not even create a spam folder in my email client for this server.
> 
> So I think the issue was more with the management of the list than anything
> (like a not so safe registration process, or not doing a dmarc validation of the
> incoming emails).

agree.

> Anyway I see the current behavior as an hindrance at least for me, so:
> 1. As suggested by Alexander I will try to request a list admin to change this
> behavior.
> 2. if unsuccessful I will just unsubscribe.

if you don't get an answer say in a week - write to me and I will try to
ask my friends at redhat about this.

> Have a good day,
> Didier

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

