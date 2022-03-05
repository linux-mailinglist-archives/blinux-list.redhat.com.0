Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FF74CE664
	for <lists+blinux-list@lfdr.de>; Sat,  5 Mar 2022 19:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646504151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SS3xQzPbpQzqiu3uD1kBcxlcLXZNYvUFrRNWGGcBbGA=;
	b=TDW6B0ZJoRHOQZ2v1T2PRa5DZE/OvX6IXaSY520ib4J0QZIBkdA8cw2fCNGYUgpGCWpOKA
	a6/jj9BHsnFlxqU9HPGn3/86bkbXnIOi6JI94FZoesaIjUtlbct67DZ1YjKzK52dylVSEk
	ydSOOTtH9Nqu5jMyFEXtLJ0CIHjyWFc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-451-pDBi4sENMXmabWCegfMKjA-1; Sat, 05 Mar 2022 13:15:47 -0500
X-MC-Unique: pDBi4sENMXmabWCegfMKjA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70D99801585;
	Sat,  5 Mar 2022 18:15:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2D407C080A2;
	Sat,  5 Mar 2022 18:15:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A51E31931BDF;
	Sat,  5 Mar 2022 18:15:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: Snap, Flatpak and/or AppImages?
Date: Sat, 5 Mar 2022 20:15:34 +0200
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
 <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
 <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
 <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
 <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
 <mailman.2.1646492601.61339.blinux-list@redhat.com>
 <mailman.4.1646501939.61342.blinux-list@redhat.com>
 <mailman.8.1646503582.61344.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.8.1646503582.61344.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.9.1646504143.61344.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I decided that I will stick to Slint as my daily driver, with distros that I want to test on another drive.

If I need to install using a flatpak ore AppImmage, I will, but the SlackBuilds is usually good enough for what I need to do.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 05 Mar 2022, at 20:06, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Well, Ubuntu 20.04 LTS is nearly two years old at this point... and
> honestly, installing a bunch of packages that duplicate dependencies,
> don't integrate properly with the rest of the system, and might break
> accessibility due to that lack of integration sounds inferior to just
> running a newer version of a given distro... Back when I used Ubuntu,
> I typically ran the current development version, only switching to the
> current release if the development version broke something and only
> touching the most recent LTs if it was the most recent release
> period... Right now, most of my installed packages are sourced from
> debian unstable with just a handful of packages from Debian Stable(due
> to breakage in the testing/unstable versions I can't determine the
> cause of), Debian Experimental(mainly Orca and other accessibility
> stack packages) and a few locally installed, and flatpack, snapd, and
> appImages all sound unappealing.
> 
> Granted, I also try to keep my installed system as small as possible
> to keep the time it takes to create or restore a backup of my system
> drive short, so all of these alternative package formats duplicating
> all of a package's dependencies instead of using the installed copies
> is a real deal breaker if there's any alternative... Thankfully, it's
> been a real long time since I've seriously wanted to install something
> not available from the debian repositories.
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

