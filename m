Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 395B4301714
	for <lists+blinux-list@lfdr.de>; Sat, 23 Jan 2021 18:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611421746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UjxRf5f7a2stkBIFKsH1J6FxvsREN3Cm6tA9gggrZPM=;
	b=HDdRUaEeLGMQapV6F7Byg48yJWA4rbI9DWsUmuLXaN3JcHFaenSgsEP/1lG+/Dcf7th2ve
	dOXq9TEbOX1bI8ENFpyyv+whayb/X9GQ3Pf2tum0+jxmRi2y9dDZ2T/jzxGO+M+uo0BU0k
	7efQAUlTFuWg96x0WyE35B7LfUnjtl0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-53-J4V4w9mrMJyNl_gag-hIhQ-1; Sat, 23 Jan 2021 12:09:04 -0500
X-MC-Unique: J4V4w9mrMJyNl_gag-hIhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01C7B180A094;
	Sat, 23 Jan 2021 17:08:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72A739CA0;
	Sat, 23 Jan 2021 17:08:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBEE24BB40;
	Sat, 23 Jan 2021 17:08:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10NH7BNL006212 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 23 Jan 2021 12:07:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4B7025D230; Sat, 23 Jan 2021 17:07:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 451D55D226
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 17:07:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AFC8101A560
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 17:07:09 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-353-9ULokuTuPeirLCuOrxfu8Q-1; Sat, 23 Jan 2021 12:07:06 -0500
X-MC-Unique: 9ULokuTuPeirLCuOrxfu8Q-1
Received: by mail-qk1-f182.google.com with SMTP id n15so3772139qkh.8
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 09:07:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=SiYD810Le3Jf8iefovB85i/IlgCli2ps0cmjB+B/kW0=;
	b=Qg9qBKrk8UrzC6IhQKmWWpUJhD4Pc1xuCrxOSPHQsxILCB6Zjxv80ioPLn74MutpBR
	LmBtMqTJhIGG8lwivvnbIMiA8dDnJg3y3/9kuwt1Vyv4K2Rcq5onHuMJtOCQempBukUD
	/iin0jJhvgi047EbGF4nql0Kx+gUn9XG4AMKNQSEGAf9PX1CwWXhUVvOu9ThhhD50YBx
	QI0IakWAELE+FjUa30STDVUw5tFiSa3kIkL1Q2RH+IeHMEKUIa32BR8w5r6OLAcXouCx
	khxKp//SSQrP2TQ471DWhd/cbu5WC+2m2LFioyUElXTV+PVJ2uEr0np3lrW+x6oCoxHR
	ZuVg==
X-Gm-Message-State: AOAM533jT85NYFliYcikgcCgcqM8AGWh9rklpOe7vpPLq2d3aaAnyEU3
	swLvn3ZFRIeKP8rykxGtRhc5hyCd9laf90sId9nIW0L3t5U=
X-Google-Smtp-Source: ABdhPJwzGEhSjP1FNJ83FxNOtoJ0SXee92XawGNh1nDTW2OGG/pNnQAJcOmpV5eKHwsz8Jg/fT5cQQ96NVWmE8LsqNI=
X-Received: by 2002:a05:620a:21d3:: with SMTP id
	h19mr1451541qka.341.1611421626297; 
	Sat, 23 Jan 2021 09:07:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:46c2:0:0:0:0:0 with HTTP; Sat, 23 Jan 2021 09:07:05
	-0800 (PST)
In-Reply-To: <161139635710.6.15346525701550806542.3266624@slmail.me>
References: <161139635710.6.15346525701550806542.3266624@slmail.me>
Date: Sat, 23 Jan 2021 17:07:05 +0000
Message-ID: <CAO2sX32cNAg1c4RSf8GVq_hSMPNNre1Rpz8U6LAjd4ty6EMuFA@mail.gmail.com>
Subject: Re: Is there an easy to use Equalizer for Ubuntu based Distros?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can't help with the equalizer, but regarding conf files:

In general, conf files are just plain-text files that can be edited in
whichever text editor you prefer. That said, editing a conf file is a
rather application-specific task, so it's less "learning how to edit
conf files" and more "learning how this particular application formats
its conf files" with some applications having conf files that are
rather human-readable and fairly self-explanatory and others having
conf files that are hard to parse even with a guide.

Though, one thing you could try is looking up the equalizer package
with no configuration tool in a package manager and checking the list
of packages that depend on it. If there exists a frontend that lets
you avoid messing with conf files, it probably depends on the
low-level equalizer. I know the curses-based Aptitude has such
functionality, but I sespect other frontends for apt have it as well.

To look this up in Aptitude:

>From the command line:

sudo aptitude

This will bring up aptitude's main package list, which sorts packages
into a hierarchy by install status, software category, and License.
Press forward slash to bring up a search box.

type the name of the package you want to check what depends on it and
press enter.

If the first result isn't what you're searching for, press n to go to
the next result.

Once you've found the package you're interested in, press enter to
bring up its details.

The details page will have the name and description at the top, tags
and some data about the package(such as size, architecture, source,
and maintainer), and then a list of related packages sorted by
relationship.

The relationships section will start with packages the selected
package depends on, recommends, suggests, etc if there are any,
followed by conflicts and breaks, and each section can be
expanded/collapsed by pressing enter on its heading.

Further down will be a section for packages that depend on the
selected package, and while most relationship section are only
displayed if there are packages in them, this one will be displayed
even if there are zero packages in it. It will have subsections for
depends, recommends, and suggests, and if the selected package has any
aliases, separate sections that call for the alias instead of the
packag directly.

Pressing enter on any package listed in the relationship area will
bring up it's detail page, or a list of versions/alternatives if
multiple versions are available or multiple packages can fulfill the
same dependency.

And for the sake of completeness, the last item of a package's detail
page in aptitude is a list of available versions.

Oh, and lowercase q will take you to the previous screen, capital Q
will prompt exit from aptitude back to the command line, Plus sign
marks the highlighted package for installation, minus sign for
removal, lowercase u refreshes the package list, lowercase g shows you
a preview of what will be done, and pressing g again on the preview
executes changes.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

