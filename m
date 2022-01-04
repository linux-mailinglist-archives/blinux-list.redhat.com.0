Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C267F484826
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 19:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641322628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cblYDeGdZyZ9/GZlrlamq9qPuFcy1cxQxwdtfSFL1yI=;
	b=U1Eq6p78h1LhPI3Oq5Md13vM5KvhugT/0xHJ2eMBsPZ0SIhYYdRZKz7apJWHKSkgNJ3GMj
	PJJqUfZtyMZ6iU7xSMN4FQdldcALnfX+6VdvM6wP6RnVUmdSBI9Odorz8eeLzVZif1KlOw
	INncdjNk49klU9zSoX69aKQ9SzialOE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-6KqXQVXBNhWw3aLyvUHMtw-1; Tue, 04 Jan 2022 13:57:05 -0500
X-MC-Unique: 6KqXQVXBNhWw3aLyvUHMtw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 678D69117F;
	Tue,  4 Jan 2022 18:57:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B2DE80323;
	Tue,  4 Jan 2022 18:57:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8415E4BB7C;
	Tue,  4 Jan 2022 18:56:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204IutWV014214 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 13:56:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B554053B6; Tue,  4 Jan 2022 18:56:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEC9753BB
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:56:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2992185A79C
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:56:52 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[74.220.221.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-398-YSeHmoGUP4qCHYo0luJkBQ-1; Tue, 04 Jan 2022 13:56:50 -0500
X-MC-Unique: YSeHmoGUP4qCHYo0luJkBQ-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id BBEDD200D540D
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 12:35:11 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 4oeNngj6Wv5IU4oeNn9HZl; Tue, 04 Jan 2022 12:35:11 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:63308 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1n4oeN-003OUz-Fv
	for blinux-list@redhat.com; Tue, 04 Jan 2022 12:35:11 -0600
Date: Tue, 4 Jan 2022 12:35:10 -0600
To: blinux-list@redhat.com
Subject: Re: Recovering shift deleted data
Message-ID: <20220104123510.7304fc58@bigbox.attlocal.net>
In-Reply-To: <a033feca-6a59-76bd-10de-4bdcc745bce1@seznam.cz>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
	<4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
	<20220101132930.080d8609@bigbox.attlocal.net>
	<a033feca-6a59-76bd-10de-4bdcc745bce1@seznam.cz>
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
X-Exim-ID: 1n4oeN-003OUz-Fv
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:63308
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I'm unfamiliar with how the dictaphone connects or what
file-system it exposes (most likely a FAT filesystem rather than an
EXT filesystem).  If it is a FAT drive, you might have "testdisk" in
your repo that should allow you to undelete files from a FAT drive.
There's a pretty good write-up of steps here

https://linuxconfig.org/data-recovery-of-deleted-files-from-the-fat-filesystem

that might help you out in that case.

The last time I had to recover deleted files on a FAT drive, I
believe part of the deletion process obliterated the first letter of
the filename, so you had to provide that when restoring (so a file
named "vojita.txt" would show up in old directory listings as
"?ojita.txt" and you'd have to provide the "v" at the beginning).

Hope this helps,

-tim

On January  1, 2022, Linux for blind general discussion wrote:
> Hello,
> 
> and what to recovery data from my dictaphone? I have Olympus LSP4
> and I taked files from it by CTRL X. Some people told me about
> Recuva for Windows to recovery it.
> 
> But now, I am on my Raspberry, emailing to you. May I turn off my 
> raspberry and write from another computer?
> 
> Thanks, Vojta.
> 
> Dne 01. 01. 22 v 20:29 Linux for blind general discussion napsal(a):
> > Tim here again. Yes, if your filesystem is ext4, extundelete is
> > the tool you want.  For best results, reboot into a live ISO/CD
> > image and install it there, leaving your RPi drive untouched.
> > This will minimize the chance that installing extundelete
> > overwrites the data you want to preserve.
> > 
> > -tim
> > 
> > On January  1, 2022, Linux for blind general discussion wrote:  
> >> Hello, I have ext4, yes.
> >>
> >> Vojta.
> >>
> >> Dne 01. 01. 22 v 20:18 Linux for blind general discussion
> >> napsal(a):  
> >>> I'm guessing/hoping the partition that has your deleted file has
> >>> an ext4 filesystem. You should be able to recover the lost file
> >>> using extundelete, although if you write anything at all to the
> >>> SD, it will become less likely that your file will be
> >>> recoverable. It seems that other filesystems make it more
> >>> difficult, if not impossible to recover deleted files.
> >>>
> >>> ~Kyle
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>      
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>  
> > 
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

