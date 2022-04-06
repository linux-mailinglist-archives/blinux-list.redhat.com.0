Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A544F5E62
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 14:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649249464;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E9dXPpGds77OXZL4RTwcjzTrKyR6uSGJGlxAOOn68Bw=;
	b=a+uWGp9bpWi4B/030DX5IsSNqLy7e7L41uOxhoJRZ0zdUsGeigMv3BLHk5tWj/KRTl3wL7
	eJWK/gkzz8uzW004easwZ5m5zaqmhgmk45uRRQV9YU2G2qO9jqMffKEJTfLUBER/A96sUL
	r73nsLRk/wb6ZDdtpRk/DJeRBaEeA2Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-417-Mig6se0kMZytvSNY1cfPwg-1; Wed, 06 Apr 2022 08:51:03 -0400
X-MC-Unique: Mig6se0kMZytvSNY1cfPwg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F1C33C1618E;
	Wed,  6 Apr 2022 12:51:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C4E27C27E90;
	Wed,  6 Apr 2022 12:50:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 360CF1940376;
	Wed,  6 Apr 2022 12:50:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 13:50:50 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: different desktops
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.6967.1649240845.111210.blinux-list@redhat.com>
Message-ID: <mailman.6938.1649249456.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes another vote for Ratpoison here

That being said, I've not got IceWM to work with Orca, or anything, so
what am I missing?

I do though need to get scripting things for Ratpoison. Mostly things
like a battery monitor and a few other things

On Wed, Apr 06, 2022 at 06:27:16AM -0400, Linux for blind general discussion wrote:
> ratpoison with strychnine is a contender since you don't use the mouse in
> that environment and everything is pointed at the keyboard.  The icewm
> environment may be another contender.
> 
> 
> On Wed, 6 Apr 2022, Linux for blind general discussion wrote:
> 
> > Sure, imho all desktops were not created equal when it comes to accessibility.
> >
> > The fact that Mate is the first to go to says a lot about the ease of
> > navigating its controls to select applications, getting to the desktop,
> > launching the default Caja file manager etc.
> >
> > These are the things that define accessibility and some desktops are not able
> > to do that. I am also thinking of the ability to check on the computer status
> > such as the battery, network connectivity and so forth.
> >
> > On Wed, Apr 06, 2022 at 02:30:14AM -0500, Linux for blind general discussion
> > wrote:
> > >For a linux user, using the Orca screen-reading program and keyboard
> > >shortcuts, and not the mouse, would there be any advantage of using one
> > >desktop over another?
> > >At this time, which desktops are usable for Orca users?
> > >
> > >_______________________________________________
> > >Blinux-list mailing list
> > >Blinux-list@redhat.com
> > >https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> >
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

