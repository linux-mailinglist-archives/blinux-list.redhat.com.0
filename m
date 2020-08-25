Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0D02522CC
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 23:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598390910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rmdln350J7dxa16oWZZk9s/+jZ2DWKnVyV4o2ulz/50=;
	b=N/9+l4KXqo4nJr9M5+kGRYxfzXaa0HBJZ3CyY+x+VIaRyE8z0N0s/G+SB0XTpi8ECo+Me7
	SzrdL6Vi5/sh5ZINcBoQJvAtaMRmtHMkaWjdM4axmsrjVSZLeEvPQV3DfLh2AWboiyGya1
	zbAV66pKbsLyFoMya7ROA32lCL/RdWU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-129-zxPppD7wOiKswVbI7pgQGw-1; Tue, 25 Aug 2020 17:28:27 -0400
X-MC-Unique: zxPppD7wOiKswVbI7pgQGw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AADF181F01D;
	Tue, 25 Aug 2020 21:28:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3A6E7A40D;
	Tue, 25 Aug 2020 21:28:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3F4FC668E7;
	Tue, 25 Aug 2020 21:28:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PLSHfu024781 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 17:28:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A0388ADF69; Tue, 25 Aug 2020 21:28:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C264A9F09
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 21:28:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F796811E78
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 21:28:15 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-483-hlqgknt7Pwejmyd_vyTbPg-1; Tue, 25 Aug 2020 17:28:12 -0400
X-MC-Unique: hlqgknt7Pwejmyd_vyTbPg-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id DD30813A9793
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 14:28:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Hello
Date: Tue, 25 Aug 2020 14:28:08 -0700
References: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2.ref@yahoo.com>
	<52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2@yahoo.com>
To: blinux-list@redhat.com
In-Reply-To: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2@yahoo.com>
Message-Id: <9BDE4A37-9FEA-447B-AC5C-01191E2E07F2@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07PLSHfu024781
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.503
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, Ashley-

This list is a mixture of Linux enthusiasts, most of whom are blind or visually
impaired.  (I'm neither, but nobody has kicked me off so far. :-)  If you decide
you like Linux, this list should be a good fit.  Feel free to post any comment
or question that occurs to you.  

One key difference between free and open source *nix systems (e.g., *BSD, Linux)
and the proprietary alternatives (e.g., iOS, macOS, MS Windows) is that the *nix
systems came of age in the 70's, when GUI's were mostly a pipe dream.  So, they
have several decades of text-oriented development to draw upon.   Although they
can and do support a variety of GUI-based apps and desktops, it's fairly rare for
a capability to be unavailable at the level of the command line, scripting, etc.

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

