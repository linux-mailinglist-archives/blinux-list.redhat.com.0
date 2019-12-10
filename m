Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1C0151190F0
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 20:47:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576007238;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7lawcVVCnEF4sUMXJZNIQw6sJEfIRCFvoS8p+4YV/LI=;
	b=TyjrbxMx1WQ9hjqLPiy0D1ahys7DT7oCnyuLmGy69g9/T9h+Y3TZNoAB0pjpXRG6dTBrJR
	IPKRlEpzhkYTlikTupEzJfOatHPgAgTi/rkgcK8ZRv/nC9kETmLQHBPyJSD5TwF43xNlj2
	aI/BFC46CIM8fcD2exoP+yiZ9zQ4OOk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-4SixSKNUOXC6Ob7nxQnonA-1; Tue, 10 Dec 2019 14:47:16 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7978D1005512;
	Tue, 10 Dec 2019 19:47:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31B1D19C69;
	Tue, 10 Dec 2019 19:47:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACD0B65D2C;
	Tue, 10 Dec 2019 19:47:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAJl6VB022118 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 14:47:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A3F3F2166B2A; Tue, 10 Dec 2019 19:47:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F2282166B28
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:47:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D3748E3E00
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:47:04 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[67.222.52.190]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-zmdXB5T6M-OJoCVtWLJTkA-1; Tue, 10 Dec 2019 14:47:02 -0500
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id BAE9B2009D2B6
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 13:47:00 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id elTIioLemzc5jelTIiNscA; Tue, 10 Dec 2019 13:47:00 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:34681 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1ielTI-0018LR-E0
	for blinux-list@redhat.com; Tue, 10 Dec 2019 13:47:00 -0600
Date: Tue, 10 Dec 2019 13:46:59 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
Message-ID: <20191210134659.09f8f568@bigbox.attlocal.net>
In-Reply-To: <alpine.DEB.2.21.1912102034360.16@Owner.localdomain>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
	<alpine.DEB.2.21.1912102034360.16@Owner.localdomain>
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
X-Exim-ID: 1ielTI-0018LR-E0
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:34681
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-MC-Unique: zmdXB5T6M-OJoCVtWLJTkA-1
X-MC-Unique: 4SixSKNUOXC6Ob7nxQnonA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Likewise I've fairly recently used the app-password to use
OfflineIMAP to slurp down my gmail mail locally so I can index it
with "notmuch" and read it with mutt/neomutt.  No major issues last
time I checked.

-tim

On December 10, 2019, Linux for blind general discussion wrote:
> Hi,
> I'm writing this e-mail in Alpine from my gmail adress using an
> in-app password. No problems whatsoever. You're prompted for the
> password at the start of the session, as well as the first time you
> send an e-mail during that session.
> 
> No idea if Google actually detects my client, or what would happen
> if I selected another program.
> 
> hth,
> Tobias
> 
> 
> On Tue, 10 Dec 2019, Linux for blind general discussion wrote:
> 
> > Has anyone here gone high security with google and generated an
> > app-password for their command line email apps?  If so, which
> > apps? I have and can use a few different apps but really want to
> > know what google will be limiting me to with two-factor
> > authentication and an app-password before I enable two-factor
> > authentication.  If there's no apps this can be done with, no
> > point enabling two-factor authentication and trying to generate
> > an app password for any of these.  When google security is after
> > users to enable higher security and google recognizes linux
> > devices have been and are likely to continue being used on an
> > account those messages ought to include a list of apps that will
> > work in linux.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >  
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

