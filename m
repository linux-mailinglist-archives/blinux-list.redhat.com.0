Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E43F54AFE03
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 21:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644437306;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8gDqDSSkCnHne2f0grnp4Qk/6adSOh4optbcglqoj1c=;
	b=Fb1PNZivz7BFJChDIoxRjNUzTkLqhg3Y6rOW5tTUTP+EsAANvAMGtWd0ZFKjF3ZwG+inRJ
	JlcB8mA8iSEg26NL23pLwFdB/hbBYFF5GMNNaAqDr1At5CTDTm4bwgUeL8OFnOF2IeFr/W
	mHhGVXwnUuHHvtbranJJe5ySy7hiFac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-ONQx1u1WOFKCPQTz-wh0lQ-1; Wed, 09 Feb 2022 15:08:22 -0500
X-MC-Unique: ONQx1u1WOFKCPQTz-wh0lQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 767DF1091DAB;
	Wed,  9 Feb 2022 20:08:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4E3356F6B;
	Wed,  9 Feb 2022 20:08:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC5BF4CA93;
	Wed,  9 Feb 2022 20:08:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219K77VD003633 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:07:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6967876CC; Wed,  9 Feb 2022 20:07:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 632E7778A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:07:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6ACD1C05EBC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:07:01 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.19.108]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-45-bAYoD8dUPmCIfCybrrRIWw-1; Wed, 09 Feb 2022 15:06:59 -0500
X-MC-Unique: bAYoD8dUPmCIfCybrrRIWw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id E36F22009A76D
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:43:37 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HssLnDyBmtGNQHssLnp0Tx; Wed, 09 Feb 2022 13:43:37 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:52895 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHssL-000Cgh-LG
	for blinux-list@redhat.com; Wed, 09 Feb 2022 13:43:37 -0600
Date: Wed, 9 Feb 2022 13:43:36 -0600
To: blinux-list@redhat.com
Subject: Re: regex help
Message-ID: <20220209134336.72a59209@bigbox.attlocal.net>
In-Reply-To: <CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nHssL-000Cgh-LG
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:52895
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

Tim here, replying inline again

> so instead of typing something like:
> 
> mv longTitle:longSubtitle.pdf longTitle.pdf
> 
> when I want to truncate an overly long filename to something more
> manageable, I could instead type
> 
> mv longTitle{:longSubtitle,}.pdf

You've got it!  It expands the filenames at the shell level, before
handing it off to the program, so it works with multiple items as
well, such as

  $ mkdir -p Mail/work/{cur,new,tmp}

which expands to the same as

  $ mkdir -p Mail/work/cur Mail/work/new Mail/work/tmp

Or, if you have a select a subset of items out of many, you might copy
them like

  $ cp IMG_{1002,1039,1053}.JPG wedding_pictures/

I use it all the time.  Welcome to the club. (grins)

> Also, some of those examples are starting to remind me of sed
> commands... if I copy a bash script that's just the shebang line an
> a bunch of sed commands and edit the copy to replace sed with
> rename, is the resulting script likely to do to file names what the
> original scrip does for the contents of text files? Or is my
> brain's pattern matching throwing a false positive?

Not quite.  But you can come close by creating your sed command(s)
like

  ls | sed "s/.*/mv '&' '&'/" > modifications.sh

this will create a file containing a whole bunch of mv(1) commands
that are null-operations.  You can then go edit the second parameter 
to mv, changing the name to the ones you want, and deleting the mv
commands you don't want, then run the whole thing with

  sh modifications.sh

If you're nervous about doing such bulk changes, possibly deleting or
renaming lots of files, you can use "echo rm" in the sed command

  ls | sed "s/.*/echo mv '&' '&'/" > check_me.sh

and do your modifications/renames in there and run them

  sh check_me.sh

if it looks like it will be running the right commands, you can then
either modify the file

  sed 's/^echo *//' check_me.sh > for_real.sh

and run the results:

  sh for_real.sh

or you can run them directly without the intermediate file:

  sed 's/^echo *//' check_me.sh | sh

All sorts of fun that can be had here. (grins)

Hope it helps,

-Tim





_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

