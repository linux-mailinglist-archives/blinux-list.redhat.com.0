Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D52674D2451
	for <lists+blinux-list@lfdr.de>; Tue,  8 Mar 2022 23:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646778760;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sUduhBvK5fXOmeUMjWMHXX/FcXwn0ImJ0op9lV1knzw=;
	b=istVQVNX1av2j73w2dIBNHcYZ0AhiDhGaA1CG2ICoTZlg3YCbOVE1YlwOzWMfkXMSL9pIk
	MlPdla70u2DBSDj1lYTCfEgm103pu3DNMoT0U3qBHfPZ6x5YqNO/naZ7KR73BoSQhZmBvw
	UkK5UA6CoJ5vDb4XoocxA831lfdDsEs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-_JijNnhMP-iEY7ls3HlWJQ-1; Tue, 08 Mar 2022 17:32:37 -0500
X-MC-Unique: _JijNnhMP-iEY7ls3HlWJQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A09F811E78;
	Tue,  8 Mar 2022 22:32:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8292C400F3FE;
	Tue,  8 Mar 2022 22:32:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 37EE0195F41E;
	Tue,  8 Mar 2022 22:32:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 8 Mar 2022 17:31:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: zoom-linux fail
In-Reply-To: <mailman.421.1646776060.111206.blinux-list@redhat.com>
References: <mailman.421.1646772618.111205.blinux-list@redhat.com>
 <mailman.412.1646773207.111206.blinux-list@redhat.com>
 <mailman.421.1646776060.111206.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.530.1646778751.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I logged in with the desktop app but couldn't get onto any of the menu
controls with the keyboard.  This zoom-linux app isn't ready for prime
time.  I used f7 to enable caret navigation and tried with flat review.
A browser with web interface probably will work better though a new
version of the zoom-linux app is available I couldn't move onto the button
to do the update.
I'm removing the zoom-linux app from my machine since it is taking up
space and providing no utility.


On Tue, 8 Mar 2022, Linux for blind general discussion wrote:

> I tried with the desktop app.  Chrome isn't on this system but could put
> it on if that would help.
>
>
> On Tue, 8 Mar 2022, Linux for blind general discussion wrote:
>
> > How are you trying to sign in? Are you using a browser, and if so, which one,
> > or are you trying to use the desktop app, which I believe may be based on
> > Chrome in some way? From browsers, specifically Firefox and Brave here, I was
> > able to open a dropdown that said "host a meeting" that opened up and allowed
> > me to select "with video off" or "with video on." Once I selected which I
> > wanted, a new page loaded asking me for an email and a password. Under this
> > there are links in case you forgot your password or to read the terms of
> > service and privacy policy and a button that says "Sign In." I have never
> > hosted a Zoom meeting, although I did once set it up, so I didn't go any
> > further because I don't remember my password. But as far as I could see, the
> > email and password were the only things needed once I decided whether I wanted
> > to host a meeting with or without video. Hope it helps.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

