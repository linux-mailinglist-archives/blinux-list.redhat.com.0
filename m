Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A0A7128DF
	for <lists+blinux-list@lfdr.de>; Fri, 26 May 2023 16:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685112365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5URBb9KA1XMaOpItuQ48z31nIwubi55R+lkJsU5bTsY=;
	b=bt8yVkOX5wvA9CZjrkvHakrRRvgklf5DttFpFWXY8X8HNXKQMLvNr4H9FQ/SwN43zYPw7t
	TuQ2/ZifxnmiPF2QJIcL/kMpNyp1akNLsiwjP6Or7qBSUtAlLK0U5f7+HbrYkUL0qVH2h4
	yvvQvejY7fZealcefQlda+4yX0HPQYQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-Sk-ao7fbNIG6ej38dXmqWg-1; Fri, 26 May 2023 10:46:02 -0400
X-MC-Unique: Sk-ao7fbNIG6ej38dXmqWg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DF7E8032FA;
	Fri, 26 May 2023 14:46:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 33382407DEC6;
	Fri, 26 May 2023 14:45:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AAA9F19465B6;
	Fri, 26 May 2023 14:45:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1664.1685092941.233161.blinux-list@redhat.com>
References: <mailman.1664.1685092941.233161.blinux-list@redhat.com>
Date: Fri, 26 May 2023 10:45:46 -0400
Subject: Re: Keeping Debian relevant question
To: blinux-list@redhat.com
Message-ID: <mailman.1512.1685112352.233164.blinux-list@redhat.com>
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

Well, for what it's worth, Backports and Testing both contain Orca
3.43.11 with the only difference in version number being Backports has
an extra string at the end to indicate it is a Backport. Also, Debian
Unstable currently contains the same version of Orca as Testing.

For the moment, Bookworm points at Debian Testing and the only
difference between putting bookworm in your sources versus Testing is
that Bookworm will switch to Stable automatically upon release.

Testing versus Backports is mostly a question of upgrading everything
versus only upgrading key components, and ingeneral, I believe the
biggest difference a backport build and a testing build in most cases
is that the backport will be built against stable libaries that aren't
backported.

That said, short of building from Git, if you want the newest Orca
Debian offers, you want Debian Experimental, which currently has a
.44.0 package of Orca. And while the packages in Experimental are
often too bleeding edge even for Debian Unstable, it's arguably less
risky to add Experimental to your sources.list than Unstable as while
Unstable is a full distro and packages will automatically be upgrade
to to their unstable versions by a apt upgrade unless you've set a
default release in your apt settings to prevent it, Experimental only
contains a small fraction of the packages offered by Debian and
upgrades to an experimental version are always manual(Aptitude won't
even mark packages with an experimental upgrade as upgradeable, you
have to manually check a package's list of available versions to know
when an experimental upgrade is available)... that said, I did test
the Debian Experimental build of Orca earlier this week and it broke
Seamonkey's accessibility completely... another thing that makes
Experimental less risky compared to Unstable is that I could downgrade
to the version I was using previously pretty much as soon as I
realized there was a serious issue... A broken version manages to slip
into unstable or testing, you have little choice but downgrade to a
version likely older than the last working version.

Sorry I can't really give you a definite answer, but there really
isn't one and hopefully this helps you make an informed decision. For
what it's worth, While I've only recently switched to Vanilla Debian
after about a decade of using Knoppix, I've been sourcing >95% of my
packages from Debian Testing with occasional dips into unstable and,
in the last year, experimental for over a decade with little
issue(though, part of what pushed me to switching to Vanilla Debian
was an issue where upgrading to the Testing version of libc-bin, a
core library nearly everything depends on broke my Knoppix install
forcing a prolonged stint sourcing stuff from Debian Stable).

On 5/26/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> So, had to set up a Debian laptop for someone, and the first question I
> got asked is ....yes but how do I update all the accessible stuf?
>
> So here's my question. What is the most accepted way to do this, is it
> by backports, or switching to testing? It's a Debian 11 system, and by
> default it ships with Gnome 3.38 and thus Orca 3.38.
>
> So, is there a preferred way to keep things up to date then? I've seen
> some people online say use backports. I've seen others say oh, go with
> testing, it hasn't ever let me down, and still others say oh, wait for
> Bookworm, and yet more say oh switch your sources.list to Bookworm
>
>
> So which is it? I'm not sure what the consensus is.
>
>
> And related question, Is there an easy way to buil Orca from git? I know
> about Una, so is it on there, if so it'd make my life a lot easier. Una
> is, for those who aren't aware, like paru or yay for Debian. I didn't
> know Debian had an AUR until I stumbled across Una.
>
>
> Jace
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

