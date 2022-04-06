Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053B4F5A8C
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 12:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649240852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h81ZDuLycMQLfaWbfNfAr/hUNX6uhdfb8YWGn15XMig=;
	b=f3qztsjeYJVGqybVYvm+8MnX6AZ5gxlzpQlXn+BELkS9iwCRj1GV8iC+zNgjtdfWYssGjF
	RKJsFBK0pdLoDeHCPVaowvtA6Jgxu7tNJlaFeNvXTNz49adLJoGvaVv/V5vMC+1aaweOck
	rbW5ldtPNvSYR3YR8kShiH1Mx3cGCTw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-349-D9cQ6K4eNXmTPnhCPwKA4g-1; Wed, 06 Apr 2022 06:27:29 -0400
X-MC-Unique: D9cQ6K4eNXmTPnhCPwKA4g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65ADF3C01DA2;
	Wed,  6 Apr 2022 10:27:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C65797AC3;
	Wed,  6 Apr 2022 10:27:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1CA10193F6E1;
	Wed,  6 Apr 2022 10:27:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 06:27:16 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: different desktops
In-Reply-To: <mailman.6722.1649237413.111209.blinux-list@redhat.com>
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.6967.1649240845.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

ratpoison with strychnine is a contender since you don't use the mouse in
that environment and everything is pointed at the keyboard.  The icewm
environment may be another contender.


On Wed, 6 Apr 2022, Linux for blind general discussion wrote:

> Sure, imho all desktops were not created equal when it comes to accessibility.
>
> The fact that Mate is the first to go to says a lot about the ease of
> navigating its controls to select applications, getting to the desktop,
> launching the default Caja file manager etc.
>
> These are the things that define accessibility and some desktops are not able
> to do that. I am also thinking of the ability to check on the computer status
> such as the battery, network connectivity and so forth.
>
> On Wed, Apr 06, 2022 at 02:30:14AM -0500, Linux for blind general discussion
> wrote:
> >For a linux user, using the Orca screen-reading program and keyboard
> >shortcuts, and not the mouse, would there be any advantage of using one
> >desktop over another?
> >At this time, which desktops are usable for Orca users?
> >
> >_______________________________________________
> >Blinux-list mailing list
> >Blinux-list@redhat.com
> >https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

