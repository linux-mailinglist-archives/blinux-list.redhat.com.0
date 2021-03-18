Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5DE34094C
	for <lists+blinux-list@lfdr.de>; Thu, 18 Mar 2021 16:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616082828;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ufTWNsQU8M3Q4qHILUUzqTSELmFLnXbeNbSqEGvgPH8=;
	b=R4l9/BVvyXVhvRD/PCTR9mj1fsw8BcKRsJes35SL3EIMWgV0G/jOwI8QUYzK5WWla3an9/
	Wv1+sfVs/MU0pND1LiVQa3DS1zfolhEHclB0n+Ln+iTWnGr7XjUhvDsiD7OXac+ID7TXuy
	EbkrbgBVlHZnJQrx9Q28kOfdDeT4iE8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-cme96YWSP76N_9d8m5TC4Q-1; Thu, 18 Mar 2021 11:53:43 -0400
X-MC-Unique: cme96YWSP76N_9d8m5TC4Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 500FC801962;
	Thu, 18 Mar 2021 15:53:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 013261899A;
	Thu, 18 Mar 2021 15:53:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C5871809C83;
	Thu, 18 Mar 2021 15:53:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12IFrKM8021046 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 11:53:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3693111558A0; Thu, 18 Mar 2021 15:53:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31CEE115589E
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:53:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC164811E93
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:53:17 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.22.1]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-183-Dhopc1uAPAWGgE0LaJXpBA-1; Thu, 18 Mar 2021 11:53:14 -0400
X-MC-Unique: Dhopc1uAPAWGgE0LaJXpBA-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id E7031200C8B2C
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 10:29:10 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id MuaEl5z9GkIbjMuaElaOD7; Thu, 18 Mar 2021 10:29:10 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:59392 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lMuaE-003YhM-K1
	for blinux-list@redhat.com; Thu, 18 Mar 2021 10:29:10 -0500
Date: Thu, 18 Mar 2021 10:29:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Decluttering Thunderbird/other alternatives?
Message-ID: <20210318102909.14ecb105@bigbox.attlocal.net>
In-Reply-To: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lMuaE-003YhM-K1
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:59392
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12IFrKM8021046
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

Tim here.

I know that it's possible to hide the icon-bar(s) at the top and to
reconfigure them to remove unused portions.  Though I'm not sure how
accessible the "modify toolbars" interface is.  However, I'm not sure
about the tabbing-twice-to-get-to-the-subject-field aspect.

As for alternative programs, I guess it would depend on what features
of Thunderbird that you use.  Do you use multiple accounts or just
one email account?  Do you use any other plug-ins for things like
encrypted/signed email, RSS, or calendaring (I think that's what
Lightning is, but I'm a tad confused there, since I had understood it
had been moved to an add-on, so you should be able to use the add-on
manager to remove it if you don't want Lightning to appear in your
interface).

Of similar functionality to Thunderbird:

If you use a Gnome-based desktop, then Evolution might fit your
requirements.

If you use a KDE-based desktop, KMail might suffice.

Both of those are fairly tightly tied to their desktop environment,
so the accessiblity should be comparable.

I primarily use Claws mail, though I'm not sure how well it
plays with other accessiblity tech like Orca.

>From the other end, there are a number of CLI mail clients that would
be roughly as accessible as your terminal.  I know that both
mutt/neomutt and alpine have some configuration options to make it
more screen-reader/Braille friendly; there's aerc and sup/alot too,
though I have less experience with them.  If you use a single mail
account with something like fetchmail and sendmail, the classic
"mail" program works pretty well.  

With a better idea of how you use mail (and how comfortable you are
at a command-line), it might help us give better ideas/suggestions.

-Tim

On March 18, 2021, Linux for blind general discussion wrote:
> So is there a way I can declutter Thunderbird to be simpler/easier
> to navigate? I don't /need/ Lightningtaking up space, or having to
> tab twice in writing a message to get to the subject field.
> 
> So can I do anything to declutter Thunderbird. Or are there any 
> alternative email programs that are just as good as Thunderbird
> that work great with Orca?
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

