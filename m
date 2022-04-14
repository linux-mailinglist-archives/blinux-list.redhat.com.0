Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C82A450199D
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 19:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649955911;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=apx2zDQF42uBtCieGLD9u0ZUggyOhHrk621I9VOV8Go=;
	b=L2EilRBkKDw3LF7Q53vKcYFXKr3auJJIz4SOp663/Im3MgzjFjtHZAy4FCH1DO+Z4wxOiH
	1b4lTv7kbUVIwtvM/WOPU0PINgiI0WlKmA+MbdukOdDFjMEdZyMFU7zCJAEokGhY0NfJZn
	Qe8/pYP6pabMAYt9Q4b32iqXp473HKk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-389-Lnsh1YtzNvaNXjoAXax1rw-1; Thu, 14 Apr 2022 13:05:08 -0400
X-MC-Unique: Lnsh1YtzNvaNXjoAXax1rw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7ECE0857A83;
	Thu, 14 Apr 2022 17:05:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D4882492D5B;
	Thu, 14 Apr 2022 17:05:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3A276194034B;
	Thu, 14 Apr 2022 17:05:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 18:04:58 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8358.1649952886.111205.blinux-list@redhat.com>
Message-ID: <mailman.8367.1649955905.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Kyle and I get good, stable Linux systems however though Devin. What happened to you being the voice for oh just install Fedora, and use emacs. Why the sudden shift to MS's side of things then?

On Thu, Apr 14, 2022 at 11:14:29AM -0500, Linux for blind general discussion wrote:
> Sir, you should clear the red from your vision. Such rhetoric is improper.
> Lol and you thought the stuff coming from the Yggdrasil screen reader page
> was confrontational. Anyways, I don't need to convence you. I wasn't trying
> to convence you. You always think people are out to try and get you to
> change from whatever it is you're using. Like when I talked about Gemini
> and such. Also I don't *love* Microsoft. I get from them a good, stable
> system with community support by blind users and developers. And in return,
> they get whatever data they can out of my computer use. Personally, if they
> think I'm *that* interesting, I welcome the attention.
> Devin Prater
> r.d.t.prater@gmail.com
> 
> 
> 
> 
> On Thu, Apr 14, 2022 at 9:56 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
> > OK enough with the Microsoft commercials. We are past tired of them by
> > now. We see more than enough of them on TV. What happened to your
> > beloved EMACS? You will not convince anyone here that your new-found
> > love of Microsoft is any good for anyone. Go crawl back into your
> > microsoft hole and leave the Linux list alone. This is not the place for
> > Microsoft spam.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

