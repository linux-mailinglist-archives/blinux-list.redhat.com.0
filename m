Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B86324F5A0F
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 11:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649237422;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+h/HFFbUKGq+EOwBLyYNq8I2Gx/xxOvAtIHanV9JXx8=;
	b=MrTtibPv1qujdlui667b0jniqGoEXb/yzLLqX8PgC4476cWJlew0PNY07/aIIZVs3NqU5h
	i9jcuf8qWd42fM4BQ2fKDXlMH6OF3Bh0bxtwkO8qegbTvei5yhR0TcwArAmr3Jp4UPI5mR
	0fDbN7yj/LxxnXo8PAOY3nl1Ibh85G0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-j7J9AdEAOo2Fy5WeUjgGXw-1; Wed, 06 Apr 2022 05:30:19 -0400
X-MC-Unique: j7J9AdEAOo2Fy5WeUjgGXw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 185C685A5BE;
	Wed,  6 Apr 2022 09:30:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D371B1415129;
	Wed,  6 Apr 2022 09:30:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 35AB7193F6E1;
	Wed,  6 Apr 2022 09:30:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 11:28:04 +0200
To: blinux-list@redhat.com
Subject: Re: different desktops
Mail-Followup-To: blinux-list@redhat.com
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
User-Agent: Mutt/2.2.2 (aa28abe8) (2022-03-25)
Message-ID: <mailman.6722.1649237413.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sure, imho all desktops were not created equal when it comes to accessibility.

The fact that Mate is the first to go to says a lot about the ease of navigating its controls to select applications, getting to the desktop, launching the default Caja file manager etc.

These are the things that define accessibility and some desktops are not able to do that. I am also thinking of the ability to check on the computer status such as the battery, network connectivity and so forth.

On Wed, Apr 06, 2022 at 02:30:14AM -0500, Linux for blind general discussion wrote:
>For a linux user, using the Orca screen-reading program and keyboard shortcuts, and not the mouse, would there be any advantage of using one desktop over another?
>At this time, which desktops are usable for Orca users?
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
Good people do not need laws to tell them to act responsibly, while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

