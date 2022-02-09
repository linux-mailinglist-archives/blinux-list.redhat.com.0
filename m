Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C684AF5C1
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 16:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644421998;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HqaDkw0HacymjqPiLILC/SSnEe6DprgIoempNsuxlg8=;
	b=ZC0+wh2OcI+NEAUKSpXJ0jfWt0MdG2TMg3j65fKAJWprrA65eyBzMEE3pgbDJvyAflprr+
	zqVz+eObP4566OaYFaWkixV/UY8IrWHmUlxiKCRJaiNOyHOz2QIS6GGo7rsRcrxrQrU4/D
	6qAWMRDAXG0lKvkXsmvETyYAH97aodY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-pKyR2NLxNxWKpLeDM2J_TQ-1; Wed, 09 Feb 2022 10:53:15 -0500
X-MC-Unique: pKyR2NLxNxWKpLeDM2J_TQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E3A386A06F;
	Wed,  9 Feb 2022 15:53:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 144017EF78;
	Wed,  9 Feb 2022 15:53:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06E9D4BB7B;
	Wed,  9 Feb 2022 15:53:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219Fqskc011539 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 10:52:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C9D382026604; Wed,  9 Feb 2022 15:52:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C49B320268FE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:52:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79E321C07CCC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:52:51 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[74.220.221.221]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-178-zAohUIo2OWe_VjeYXldi7A-1; Wed, 09 Feb 2022 10:52:49 -0500
X-MC-Unique: zAohUIo2OWe_VjeYXldi7A-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id 0511C200A651A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 09:05:50 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HoXWnLcyauhW2HoXWnxQUp; Wed, 09 Feb 2022 09:05:50 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:58031 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHoXW-004IlD-N8
	for blinux-list@redhat.com; Wed, 09 Feb 2022 09:05:50 -0600
Date: Wed, 9 Feb 2022 09:05:49 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: regex help
Message-ID: <20220209090549.4659750f@bigbox.attlocal.net>
In-Reply-To: <20220209.123818.520.13@[192.168.1.100]>
References: <20220209.123818.520.13@[192.168.1.100]>
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
X-Exim-ID: 1nHoXW-004IlD-N8
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:58031
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

Tim here.  There are a lot of flavors of regular expression, so you'd
have to pick the tool first and then craft the regex according to
that engine.  For bulk renaming, I'm partial to the perl "rename"
tool, which fortunately has the gold standard of regex, PCRE syntax.

So I'd test it with

   rename -n 's/(\b[[:alpha:]])\./$1/g' *.txt

and if the results look good, remove the "-n" dry-run flag and run it
again.

The regular expression captures (using the parens) any
single alphabetic character ("[[:alpha:]]"), and that letter must
stand alone (the "\b" enforces a word-boundary before that letter),
followed by a literal period ("\.") and replaces it with the letter
we captured (without the period).  The "g" flag instructs it to do
every instance it finds in the filename, not just the first one.

Hope this helps!

-Tim

On February  9, 2022, Linux for blind general discussion wrote:
> I want to create a regex that will look for single letters followed
> by a dot. This is for porpoises of file renaming. For example. J.
> S. Smith - Become an Evil Dictator- A Step by Step Guide.txt Arthur
> A. C. Johnson - How to Win Minions and Overthrow Governments.txt
> 
> The regex should look for and remove the dots. So the file names
> end up being: J S Smith - Become an Evil Dictator- A Step by Step
> Guide.txt Arthur A C Johnson - How to Win Minions and Overthrow
> Governments.txt
> 
> Is it possible to craft a regex to just find all single letters,
> followed by a dot? What file renamer is the best one to use for
> this? The one I currently use is brename
> https://github.com/shenwei356/brename but if there is a better
> tool, would love to know it. Thanks.
> 
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

