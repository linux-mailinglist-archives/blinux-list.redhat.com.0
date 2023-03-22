Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3736C5304
	for <lists+blinux-list@lfdr.de>; Wed, 22 Mar 2023 18:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679507449;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3nbQoUCh5Ft6R7CLtGddwqjO2cQ7Q6HFCN41F/1prE8=;
	b=XKxY+2u/66KJRIN2mRbMh5HOnjKyrNGnLLlZwmEzDXzVntPb9TRIbKYyNYEUwySIlZisbJ
	OYvMSZDlrbtK4fw45AP02aCPwQ033eDna2pDGEhgRSb7mcYaLCSID6+pJlYnItSEvy8OZM
	AvwZXRyif1sl3NbWc5SslgfV3vVjiZI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-z1GJkYAJNQKJcYnoOp4RLQ-1; Wed, 22 Mar 2023 13:50:45 -0400
X-MC-Unique: z1GJkYAJNQKJcYnoOp4RLQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B22C1C09040;
	Wed, 22 Mar 2023 17:50:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D93D140C6E68;
	Wed, 22 Mar 2023 17:50:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E91E1946597;
	Wed, 22 Mar 2023 17:50:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
Date: Wed, 22 Mar 2023 12:50:20 -0500
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
Message-ID: <mailman.1003.1679507434.636361.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In the subject line was mention of a new screen-reader.  But nothing in the body of the message.

> On Mar 22, 2023, at 10:32, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> 
> 
> -- 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and amo.
> Please use in that order."
> Ed Howdershelt 1940.
> 
> ---------- Forwarded message ----------
> Date: Wed, 22 Mar 2023 11:12:05
> From: Rastislav Kish <dmarc-noreply@freelists.org>
> Reply-To: orca@freelists.org
> To: orca@freelists.org
> Subject: [orca] Odilia, the new Linux screenreader written in Rust,
>    reaches 0.1.0
> 
> Hello everyone,
> 
> technically, this should perhaps be a little bit off-topic for this
> list, but given its importance, I consider it very actual.
> 
> When I found out few months ago someone started building a screenreader
> in Rust for Linux, my first thought was this has to be an abandoned
> project. But I checked its history and GitHub activity, and to my big
> surprise, I found out the project is not just alive, but actually very
> serious about its goal!
> 
> Since then, I've been watching their repos, and I was really impressed
> with the work being done!
> 
> 
> What is this all about? As you may have heard, Rust is a popular new
> middle-level programming language, which thanks to its innovative
> design, makes it easy to write very performant, fast and secure
> programs. Many pieces of software ranking from system components to
> applications have been recently rewritten to Rust and seen significant
> performance & safety improvements, Rust is now often the choice of
> developers for projects that would previously had been written in C/C++,
> but can now benefit from Rust's impressive safety and stability.
> 
> Well, and now, accessibility developers want to bring the power of Rust
> to Linux accessibility, building a screenreader in Rust.
> 
> 
> After finishing with prototypes in the February of the previous year and
> starting the project from scratch, Odilia finally reaches 0.1.0:
> 
> https://odilia.app/news/release_0-1-0/
> 
> 
> This release is not by any means meant to be on par with Orca in terms
> of features, just very elementary things are implemented right now.
> 
> Building a screenreader from scratch is a herculean task, requiring
> colossal effort, knowledge and, time.
> 
> Therefore, this release is aimed for early users, willing to try new
> things and provide constructive feedback. There is still a lot of work
> to do, until Odilia grows into a full-fledged Orca competent.
> 
> 
> Nevertheless, it's still a very impressive work, and I wish the project
> a lot of success. If I'm not mistaken, right now, Linux is the only
> system in the world that has a Rust screenreader!
> 
> 
> Best regards
> 
> 
> Rastislav
> 
> 
> 
> _______________________________________________
> orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> Orca wiki: https://wiki.gnome.org/Projects/Orca
> Orca documentation: https://help.gnome.org/users/orca/stable/
> GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html
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

