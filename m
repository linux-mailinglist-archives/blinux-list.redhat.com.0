Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2456D33A8
	for <lists+blinux-list@lfdr.de>; Sat,  1 Apr 2023 21:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680378807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M6nKIWL51vcwDMJyZW8+HhzCSfh2ilj82+AVsqwdA1o=;
	b=Nt47nrBnpETIsMTQtNP8g0eoSNPCYJBjs0Jd7eQxTujMlG0EYr+Lj9rbhRL+psOIL5rQYT
	rCq5lnQkPLqLJ7uU9skea6VKwXAucTbk8aCx08bbroUA+bidpzRyzun5xdYmPOASKvo0+S
	wDGhFxh3NLhSKDnDpllwI29d02ZWnig=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-Jd_ggQNUNFqz4C7X0JhdFA-1; Sat, 01 Apr 2023 15:53:21 -0400
X-MC-Unique: Jd_ggQNUNFqz4C7X0JhdFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9FED29A9CB2;
	Sat,  1 Apr 2023 19:53:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5C3CA1121314;
	Sat,  1 Apr 2023 19:53:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AA4581946A44;
	Sat,  1 Apr 2023 19:53:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 1 Apr 2023 15:53:15 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Orca not speaking on new Debian install.
In-Reply-To: <mailman.106.1680378436.558770.blinux-list@redhat.com>
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
 <mailman.40.1680347357.558775.blinux-list@redhat.com>
 <mailman.82.1680367672.558774.blinux-list@redhat.com>
 <mailman.106.1680378436.558770.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.100.1680378798.558767.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can get the uid of an account with sudo grep -i username /etc/passwd.
Fields are separated by colons and the third field will hava a number in
it and that number is the uid of the username you gave grep when checking
the /etc/passwd file.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 1 Apr 2023, Linux for blind general discussion wrote:

>
> On 1/4/23 12:47, Linux for blind general discussion wrote:
> > Not sure how I can check if at-spi and orca are running as, in
> > addition to not getting speech in the GUI, I'm also apparently locked
> > from switching to a tty that's at the console, which is also an issue
> > since the work flow I'm used to is using tty switching to do web stuff
> > in the GUI and everything else in the console, though I thought the
> > inability to switch ttys was rather irrelevant if I'm not getting
> > speech in the GUI to begin with, though I suppose it is more relevant
> > than initially thought since I hadn't considered trying to diagnose
> > the running xsession from the console...
>
> You'll need to solve that problem in any case.
>
> To diagnose, your best option under the circumstances is probably an ssh
> session from another machine.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

