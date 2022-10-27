Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590460F406
	for <lists+blinux-list@lfdr.de>; Thu, 27 Oct 2022 11:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666864291;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DdaMaog64c1sOrOpIdZrwzmdCr5TIlhxqL3Yf5xkP7A=;
	b=aEdHBvCxXngK2bAZJvgJcyYyWt0QSWxNjtpfApvIZnXZWwfdfa7cgasrjTZdmLLmsR59ta
	K4g+B/nQ3Fy93j80X7vHjmJJmBv2Cj9SJKb18tZonof1yCHJyc7c5hq0237KZ+iJgMsH2h
	pJo/o2a6kakxuZLkzHK+5OcGFwbiMxE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-224-mLdYYXNiM6qYoSL9DIlMxA-1; Thu, 27 Oct 2022 05:51:29 -0400
X-MC-Unique: mLdYYXNiM6qYoSL9DIlMxA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97E9929324A1;
	Thu, 27 Oct 2022 09:51:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 569272166B2B;
	Thu, 27 Oct 2022 09:51:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2DA6B1946A7F;
	Thu, 27 Oct 2022 09:51:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 05:51:21 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: void-linux
In-Reply-To: <mailman.3171.1666863524.3004.blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3232.1666864286.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A few messages on reddit from a few years ago claimed void-linux could run
the accessibility stack and this was from someone who was alledgedly
totally blind.  I found no procedure to do a talking install nor any claim
that this totally blind person had done a talking install.


Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 27 Oct 2022, Linux for blind general discussion wrote:

> Ctrl+alt+Z...
>
>
> Isn't that shortcut for ChromeVox however?
>
> I'm not sure what Void comes with as far as A11Y stuf, or if you can install
> things like Orca, Espeak, et al however. I've not got around to trying it in a
> VM yet. Looking at it I'm not sure if it comes with Orca or how easy it'd be
> to update Orca at all vs something like Arch or another Linux distro
>
> On 10/27/22 10:31, Linux for blind general discussion wrote:
> > Can it talk while installing?  If so, this is not documented anywhere on
> > the web I have found.
> > Unfortunately control-alt-z does not get the current version of
> > google-chrome-stable talking on linux and neither does anything else I
> > found documented in the orca-list.  So for google-chrome there is either a
> > new way to get it talking in linux or no way to get it to talk in linux.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >   soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

