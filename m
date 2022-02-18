Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FE4BC2DB
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 00:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645226812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ONHrvZ6X/6rL2SvetosgIRPc6uwuRB783xSC4msKqYU=;
	b=WSOh2EFOoX8Q+5KqT+Tr4hkO5h5iIeepv0Q+mPfZwVDHo9YrIMzPA07HaejSCOSB0qQLU6
	l0VLE3YQKl4HE0XayFypF9XmGojbvixAJ/9VnIHPNw7vZYYWbmrHh8WvrmuJYBzPJdGcQ+
	YueuRXbUlfkWBJFe8lfGV+QcZN/Cb4Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-TtRg1222NhSC3X1Ab2QgmA-1; Fri, 18 Feb 2022 18:26:51 -0500
X-MC-Unique: TtRg1222NhSC3X1Ab2QgmA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E6E11006AA4;
	Fri, 18 Feb 2022 23:26:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AA4C519D4;
	Fri, 18 Feb 2022 23:26:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A03D1809CAA;
	Fri, 18 Feb 2022 23:26:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21INNDaS016484 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 18:23:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CFBA61120AA7; Fri, 18 Feb 2022 23:23:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA5A51121319
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:23:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2FA6802A67
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:23:10 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[74.220.209.254]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-328-7tvZzme_OhKAeSAfZO1GJg-1; Fri, 18 Feb 2022 18:23:08 -0500
X-MC-Unique: 7tvZzme_OhKAeSAfZO1GJg-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 2EC5720118A09
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:58:35 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id LCCxn4FLQtGNQLCCxnevS4; Fri, 18 Feb 2022 16:58:35 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:21341 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nLCCw-002n4Z-Sr
	for blinux-list@redhat.com; Fri, 18 Feb 2022 16:58:34 -0600
Date: Fri, 18 Feb 2022 16:58:33 -0600
To: blinux-list@redhat.com
Subject: Re: Mutt or Alpine
Message-ID: <20220218165833.6b951ab0@bigbox.attlocal.net>
In-Reply-To: <f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
	<f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
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
X-Exim-ID: 1nLCCw-002n4Z-Sr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:21341
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I've used both mutt/neomutt and alpine (and pine back in
the day).

The big advantage of mutt/neomutt is power/flexibility.  I've found
that it's less of a mail-reader and more a toolkit for creating your
custom mail-reader experience from the parts that it brings to the
table.  And everything is configured using the ~/.muttrc file alone
(no nice user-interface for tweaking settings) which can be daunting
if you don't have a solid grasp of what's going on under the hood.
It plays well with external tools like notmuch for indexing and your
mailcap definitions for using external programs to open attachments,
or using urlview/urlscan to search a message-body for URLs to open.
It's still not great at multi-account, requiring a lot of manual care
in setting it up (this is my biggest frustration in using it, and the
main reason I don't use it more frequently).

As far as *easier*, alpine wins pretty hands-down.  It has a
settings-editing interface for configuring pretty much everything.
Like Pico/Nano, it also keeps the list of commands along the bottom
of the screen, making it more new-user friendly.  It has a concept of
"roles" which I haven't explored recently, but it sounds like a way
to manage multiple accounts better than mutt/neomutt does.

-tim



On February 18, 2022, Linux for blind general discussion wrote:
> If you want to use an email client with Orca, stick to Thunderbird.
> 
> I find Orca unwieldy in the terminal anyway.
> 
> If, however, you wish to do so with Speakup or Fenrir, I personally
> prefer Alpine.
> 
> Why? Simple. I don't know Mutt at all.
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from the Slint console using Alpine
> 
> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
> 
> > Date: Fri, 18 Feb 2022 16:00:22 +0000
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Mutt or Alpine
> > 
> > So I'm using Mutt, but...
> >
> > What does Mutt have over Alpine and vice versa, why would I use
> > one over the other?
> >
> > Mutt seems faster to me, but Alpine seems more user friendly
> > without making temporary files while composing a message (unles I
> > can tell Mutt/Neomutt to delete those automatically
> >
> > So is there a consensus of which is the easier choice to use with
> > Orca?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >  
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

